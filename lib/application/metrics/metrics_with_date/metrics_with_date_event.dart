part of 'metrics_with_date_bloc.dart';

@freezed
class MetricsWithDateEvent with _$MetricsWithDateEvent {
  /// for 7 days data
  const factory MetricsWithDateEvent.started() = _Started;
  const factory MetricsWithDateEvent.twelveMonthsRequested() =
      _TwelveMonthsRequested;
  const factory MetricsWithDateEvent.last5YearsRequested() =
      _Last5YearsRequested;
}
