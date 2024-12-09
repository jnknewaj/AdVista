part of 'advertising_bloc.dart';

@freezed
class AdvertisingState with _$AdvertisingState {
  const factory AdvertisingState.initial() = _Initial;
  const factory AdvertisingState.loading() = _Loading;
  const factory AdvertisingState.loaded(BannerAd bannerAd) = _Loaded;
  const factory AdvertisingState.failure(AdvertisingFailures failure) =
      _Failure;
}
