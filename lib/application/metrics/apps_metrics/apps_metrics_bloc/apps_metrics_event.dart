part of 'apps_metrics_bloc.dart';

@freezed
class AppsMetricsEvent with _$AppsMetricsEvent {
  const factory AppsMetricsEvent.requsted({
    @Default(false) bool forceRefresh,
  }) = _Requested;
  const factory AppsMetricsEvent.requstedYesterday({
    @Default(false) bool forceRefresh,
  }) = _RequestedYesterday;
  const factory AppsMetricsEvent.requsted7days({
    @Default(false) bool forceRefresh,
  }) = _Requested7days;
  const factory AppsMetricsEvent.requstedThisMonth({
    @Default(false) bool forceRefresh,
  }) = _RequstedThisMonth;
  const factory AppsMetricsEvent.requstedLastMonth({
    @Default(false) bool forceRefresh,
  }) = _RequstedLastMonth;
  const factory AppsMetricsEvent.requstedThisYear({
    @Default(false) bool forceRefresh,
  }) = _RequstedThisYear;
  const factory AppsMetricsEvent.requstedLastYear({
    @Default(false) bool forceRefresh,
  }) = _RequstedLastYear;
  const factory AppsMetricsEvent.requstedLifeTime({
    @Default(false) bool forceRefresh,
  }) = _RequstedLifeTime;
  const factory AppsMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _RequstedCustom;
}
