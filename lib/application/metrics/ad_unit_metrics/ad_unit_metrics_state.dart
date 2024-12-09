part of 'ad_unit_metrics_bloc.dart';

@freezed
class AdUnitMetricsState with _$AdUnitMetricsState {
  const factory AdUnitMetricsState.initial() = _Initial;
  const factory AdUnitMetricsState.loading() = _Loading;
  const factory AdUnitMetricsState.noDataFound() = _NoDataFound;
  const factory AdUnitMetricsState.loaded(List<AdUnitMetrics> metrics) =
      _Loaded;
  const factory AdUnitMetricsState.failed(MetricsFailures failures) = _Failed;
}
