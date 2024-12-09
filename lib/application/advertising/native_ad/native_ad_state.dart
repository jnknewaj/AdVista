part of 'native_ad_bloc.dart';

@freezed
class NativeAdState with _$NativeAdState {
  const factory NativeAdState.initial() = _Initial;
  const factory NativeAdState.loading() = _Loading;
  const factory NativeAdState.loaded(NativeAd nativeAd) = _Loaded;
  const factory NativeAdState.failure(AdvertisingFailures failure) = _Failure;
}
