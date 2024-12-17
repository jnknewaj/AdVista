part of 'apps_metrics_bloc.dart';

@freezed
class AppsMetricsEvent with _$AppsMetricsEvent {
  const factory AppsMetricsEvent.requsted() = _Requested;
  const factory AppsMetricsEvent.requstedYesterday() = _RequestedYesterday;
  const factory AppsMetricsEvent.requsted7days() = _Requested7days;
  const factory AppsMetricsEvent.requstedThisMonth() = _RequstedThisMonth;
  const factory AppsMetricsEvent.requstedLastMonth() = _RequstedLastMonth;
  const factory AppsMetricsEvent.requstedThisYear() = _RequstedThisYear;
  const factory AppsMetricsEvent.requstedLastYear() = _RequstedLastYear;
  const factory AppsMetricsEvent.requstedLifeTime() = _RequstedLifeTime;
  const factory AppsMetricsEvent.requstedCustom(
    DateTime start,
    DateTime end,
  ) = _RequstedCustom;
}
