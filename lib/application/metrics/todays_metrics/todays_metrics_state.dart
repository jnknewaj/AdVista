part of 'todays_metrics_bloc.dart';

@freezed
class TodaysMetricsState with _$TodaysMetricsState {
  const factory TodaysMetricsState.initial() = _Initial;
  const factory TodaysMetricsState.loading() = _Loading;
  const factory TodaysMetricsState.loaded(Metrics metrics) = _Loaded;
  const factory TodaysMetricsState.failed(MetricsFailures failures) = _Failed;
}
