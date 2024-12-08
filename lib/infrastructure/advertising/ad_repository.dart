import 'dart:async';
import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:advista/domain/advertising/i_ad_repository.dart';
import 'package:advista/utils/ad_strings.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdRepository)
class AdRepository implements IAdRepository {
  @override
  Future<Either<AdvertisingFailures, BannerAd>> showBannerAd(
    BannerAdListener adListener,
  ) async {
    try {
      final BannerAd myBanner = BannerAd(
        adUnitId: AdString.testBanner,
        size: AdSize.smartBanner,
        request: const AdRequest(),
        listener: adListener,
      );
      await myBanner.load();
      return right(myBanner);
    } catch (e) {
      return left(const AdvertisingFailures.unknown());
    }
  }
}
