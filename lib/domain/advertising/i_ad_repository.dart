import 'package:advista/domain/advertising/advertising_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

abstract class IAdRepository {
  Future<Either<AdvertisingFailures, BannerAd>> showBannerAd(
    BannerAdListener adListener,
  );
  Future<Either<AdvertisingFailures, NativeAd>> showNativeAd(
    NativeAdListener adListener,
  );
}
