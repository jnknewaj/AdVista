import 'dart:async';
import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:advista/domain/advertising/i_ad_repository.dart';
import 'package:advista/utils/ad_strings.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:gma_mediation_unity/gma_mediation_unity.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdRepository)
class AdRepository implements IAdRepository {
  InterstitialAd? _interstitialAd;
  @override
  Future<Either<AdvertisingFailures, BannerAd>> showBannerAd(
    BannerAdListener adListener,
  ) async {
    try {
      GmaMediationUnity().setGDPRConsent(true);
      GmaMediationUnity().setCCPAConsent(true);
      final BannerAd myBanner = BannerAd(
        adUnitId: AdString.bannerAdId,
        size: AdSize.banner,
        request: const AdRequest(),
        listener: adListener,
      );
      await myBanner.load();
      return right(myBanner);
    } catch (e) {
      return left(
          const AdvertisingFailures.unknown('Unknown Ad Error. Debug.'));
    }
  }

  @override
  Future<Either<AdvertisingFailures, NativeAd>> showNativeAd(
    NativeAdListener adListener,
  ) async {
    try {
      final nativeAd = NativeAd(
        adUnitId: AdString.nativeAdId,
        listener: adListener,
        request: const AdRequest(),
        nativeTemplateStyle: NativeTemplateStyle(
          templateType: TemplateType.medium,
          mainBackgroundColor: Colors.white,
          cornerRadius: 10,
        ),
      );
      await nativeAd.load();
      return right(nativeAd);
    } catch (e) {
      cprint('NAT ERRRR', e.toString());
      return left(AdvertisingFailures.unknown(e.toString()));
    }
  }

  @override
  Future<void> loadInterstitialAd() async {
    await InterstitialAd.load(
      adUnitId: AdString.interstitialAdId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (e) {
          _interstitialAd = null;
        },
      ),
    );
  }

  @override
  Either<AdvertisingFailures, Unit> showInterstitialAd() {
    if (_interstitialAd != null) {
      _interstitialAd!.show();
      _interstitialAd = null;
      return right(unit);
    }
    return left(const AdvertisingFailures.unknown('Interestial Ad Error'));
  }
}
