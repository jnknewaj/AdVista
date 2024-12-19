part of 'ad_unit_metrics_bloc.dart';

@freezed
class AdUnitMetricsEvent with _$AdUnitMetricsEvent {
  const factory AdUnitMetricsEvent.requsted({
    @Default(false) bool forceRefresh,
  }) = _Requested;
  const factory AdUnitMetricsEvent.requstedYesterday({
    @Default(false) bool forceRefresh,
  }) = _RequestedYesterday;
  const factory AdUnitMetricsEvent.requsted7days({
    @Default(false) bool forceRefresh,
  }) = _Requested7days;
  const factory AdUnitMetricsEvent.requstedThisMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedThisMonth;
  const factory AdUnitMetricsEvent.requstedLastMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedLastMonth;
  const factory AdUnitMetricsEvent.requstedThisYear({
    @Default(false) bool forceRefresh,
  }) = _requstedThisYear;
  const factory AdUnitMetricsEvent.requstedLastYear({
    @Default(false) bool forceRefresh,
  }) = _requstedLastYear;
  const factory AdUnitMetricsEvent.requstedLifeTime({
    @Default(false) bool forceRefresh,
  }) = _requstedLifeTime;
  const factory AdUnitMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
