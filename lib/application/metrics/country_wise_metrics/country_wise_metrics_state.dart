part of 'country_wise_metrics_bloc.dart';

@freezed
class CountryWiseMetricsState with _$CountryWiseMetricsState {
  const factory CountryWiseMetricsState.initial() = _Initial;
  const factory CountryWiseMetricsState.loading() = _Loading;
  const factory CountryWiseMetricsState.noDataFound() = _NoDataFound;
  const factory CountryWiseMetricsState.loaded(List<CountryMetrics> metrics) =
      _Loaded;
  const factory CountryWiseMetricsState.failed(MetricsFailures failures) =
      _Failed;
}
