part of 'apps_metrics_bloc.dart';

@freezed
class AppsMetricsState with _$AppsMetricsState {
  const factory AppsMetricsState.initial() = _Initial;
  const factory AppsMetricsState.loading() = _Loading;
  const factory AppsMetricsState.loadedToday(List<AppsMetrics> data) =
      _LoadedToday;
  const factory AppsMetricsState.loadedYesterday(List<AppsMetrics> data) =
      _LoadedYesterday;
  const factory AppsMetricsState.loaded7Days(List<AppsMetrics> data) =
      _Loaded7Days;
  const factory AppsMetricsState.loadedThisMonth(List<AppsMetrics> data) =
      _LoadedThisMonth;
  const factory AppsMetricsState.loadedLastMonth(List<AppsMetrics> data) =
      _LoadedLastMonth;
  const factory AppsMetricsState.loadedThisYear(List<AppsMetrics> data) =
      _LoadedThisYear;
  const factory AppsMetricsState.loadedLastYear(List<AppsMetrics> data) =
      _LoadedLastYear;
  const factory AppsMetricsState.loadedAllTime(List<AppsMetrics> data) =
      _LoadedAllTime;
  const factory AppsMetricsState.loadedCustom(List<AppsMetrics> data) =
      _loadedCustom;
  const factory AppsMetricsState.failure(AppsDataFailures failures) = _Failure;
}
