part of 'metrics_summary_bloc.dart';

@freezed
class MetricsSummaryState with _$MetricsSummaryState {
  const factory MetricsSummaryState.initial() = _Initial;
  const factory MetricsSummaryState.loading() = _Loading;
  const factory MetricsSummaryState.loaded(MetricsSummary summary) = _Loaded;
  const factory MetricsSummaryState.failed(MetricsFailures failures) = _Failed;
}
