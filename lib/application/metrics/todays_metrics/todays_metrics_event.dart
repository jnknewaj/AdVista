part of 'todays_metrics_bloc.dart';

@freezed
class TodaysMetricsEvent with _$TodaysMetricsEvent {
  const factory TodaysMetricsEvent.requsted() = _Requested;
  const factory TodaysMetricsEvent.requstedYesterday() = _RequestedYesterday;
  const factory TodaysMetricsEvent.requsted7days() = _Requested7days;
  const factory TodaysMetricsEvent.requstedThisMonth() = _requstedThisMonth;
  const factory TodaysMetricsEvent.requstedLastMonth() = _requstedLastMonth;
  const factory TodaysMetricsEvent.requstedThisYear() = _requstedThisYear;
  const factory TodaysMetricsEvent.requstedLastYear() = _requstedLastYear;
  const factory TodaysMetricsEvent.requstedLifeTime() = _requstedLifeTime;
  const factory TodaysMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
