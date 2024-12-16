part of 'metrics_with_date_bloc.dart';

@freezed
class MetricsWithDateState with _$MetricsWithDateState {
  const factory MetricsWithDateState.initial() = _Initial;
  const factory MetricsWithDateState.loading() = _Loading;
  const factory MetricsWithDateState.loaded(List<MetricsWithDate> data) =
      _Loaded;
  const factory MetricsWithDateState.failure(MetricsFailures failures) =
      _Failure;
}
