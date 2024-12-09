part of 'native_ad_bloc.dart';

@freezed
class NativeAdEvent with _$NativeAdEvent {
  const factory NativeAdEvent.started() = _Started;
  const factory NativeAdEvent.loadedEvent(NativeAd nativeAd) = _LoadedEvent;
  const factory NativeAdEvent.failedEvent(AdvertisingFailures failure) =
      _FailedEvent;
}
