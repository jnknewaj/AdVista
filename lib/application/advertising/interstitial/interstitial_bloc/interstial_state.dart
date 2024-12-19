part of 'interstial_bloc.dart';

@freezed
class InterstialState with _$InterstialState {
  const factory InterstialState.initial() = _Initial;
  const factory InterstialState.loading() = _Loading;
  const factory InterstialState.loaded() = _Loaded;
  const factory InterstialState.shown() = _Shown;
  const factory InterstialState.failure(AdvertisingFailures failure) = _Failure;
}
