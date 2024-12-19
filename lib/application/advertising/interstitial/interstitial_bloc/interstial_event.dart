part of 'interstial_bloc.dart';

@freezed
class InterstialEvent with _$InterstialEvent {
  const factory InterstialEvent.loadAd() = _LoadAd;
  const factory InterstialEvent.showAd() = _ShowAd;
}
