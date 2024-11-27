part of 'metrics_summary_bloc.dart';

@freezed
class MetricsSummaryEvent with _$MetricsSummaryEvent {
  const factory MetricsSummaryEvent.fetchSummaryRequested(DateTime endDate) =
      _FetchSummaryRequested;
}
