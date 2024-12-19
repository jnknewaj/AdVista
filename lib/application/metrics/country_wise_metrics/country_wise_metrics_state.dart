part of 'country_wise_metrics_bloc.dart';

@freezed
class CountryWiseMetricsState with _$CountryWiseMetricsState {
  const factory CountryWiseMetricsState({
    required List<CountryMetrics>? todayMetrics,
    required List<CountryMetrics>? yesterdayMetrics,
    required List<CountryMetrics>? sevenDaysMetrics,
    required List<CountryMetrics>? thisMonthMetrics,
    required List<CountryMetrics>? lastMonthMetrics,
    required List<CountryMetrics>? thisYearsMetrics,
    required List<CountryMetrics>? lastYearsMetrics,
    required List<CountryMetrics>? lifeTimeMetrics,
    required List<CountryMetrics>? customMetrics,
    required bool isLoading,
    required String? todayError,
    required String? yesterdayError,
    required String? last7DaysError,
    required String? thisMonthError,
    required String? lastMonthError,
    required String? thisYearError,
    required String? lastYearError,
    required String? customError,
    required String? lifeTimeError,
  }) = _CountryWiseMetricsState;

  factory CountryWiseMetricsState.initial() => const CountryWiseMetricsState(
        todayMetrics: null,
        yesterdayMetrics: null,
        sevenDaysMetrics: null,
        thisMonthMetrics: null,
        lastMonthMetrics: null,
        thisYearsMetrics: null,
        lastYearsMetrics: null,
        customMetrics: null,
        lifeTimeMetrics: null,
        isLoading: false,
        todayError: null,
        yesterdayError: null,
        last7DaysError: null,
        thisMonthError: null,
        lastMonthError: null,
        thisYearError: null,
        lastYearError: null,
        customError: null,
        lifeTimeError: null,
      );

  factory CountryWiseMetricsState.fromJson(Map<String, dynamic> json) =>
      _$CountryWiseMetricsStateFromJson(json);
}
