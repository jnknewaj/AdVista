part of 'advertising_bloc.dart';

@freezed
class AdvertisingEvent with _$AdvertisingEvent {
  const factory AdvertisingEvent.bannerRequested() = _BannerRequested;
  const factory AdvertisingEvent.bannerAdLoaded(BannerAd bannerAd) =
      _BannerAdLoaded;
  const factory AdvertisingEvent.failed() = _Failed;
}
