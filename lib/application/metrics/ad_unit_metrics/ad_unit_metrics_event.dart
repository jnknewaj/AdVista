part of 'ad_unit_metrics_bloc.dart';

@freezed
class AdUnitMetricsEvent with _$AdUnitMetricsEvent {
  const factory AdUnitMetricsEvent.requsted() = _Requested;
  const factory AdUnitMetricsEvent.requstedYesterday() = _RequestedYesterday;
  const factory AdUnitMetricsEvent.requsted7days() = _Requested7days;
  const factory AdUnitMetricsEvent.requstedThisMonth() = _requstedThisMonth;
  const factory AdUnitMetricsEvent.requstedLastMonth() = _requstedLastMonth;
  const factory AdUnitMetricsEvent.requstedThisYear() = _requstedThisYear;
  const factory AdUnitMetricsEvent.requstedLastYear() = _requstedLastYear;
  const factory AdUnitMetricsEvent.requstedLifeTime() = _requstedLifeTime;
  const factory AdUnitMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
