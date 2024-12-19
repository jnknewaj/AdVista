part of 'todays_metrics_bloc.dart';

@freezed
class TodaysMetricsEvent with _$TodaysMetricsEvent {
  const factory TodaysMetricsEvent.requsted({
    @Default(false) bool forceRefresh,
  }) = _Requested;
  const factory TodaysMetricsEvent.requstedYesterday(
      {@Default(false) bool forceRefresh}) = _RequestedYesterday;
  const factory TodaysMetricsEvent.requsted7days({
    @Default(false) bool forceRefresh,
  }) = _Requested7days;
  const factory TodaysMetricsEvent.requstedThisMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedThisMonth;
  const factory TodaysMetricsEvent.requstedLastMonth({
    @Default(false) bool forceRefresh,
  }) = _requstedLastMonth;
  const factory TodaysMetricsEvent.requstedThisYear({
    @Default(false) bool forceRefresh,
  }) = _requstedThisYear;
  const factory TodaysMetricsEvent.requstedLastYear({
    @Default(false) bool forceRefresh,
  }) = _requstedLastYear;
  const factory TodaysMetricsEvent.requstedLifeTime({
    @Default(false) bool forceRefresh,
  }) = _requstedLifeTime;
  const factory TodaysMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _requstedCustom;
}
