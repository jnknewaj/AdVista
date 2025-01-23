part of 'apps_metrics_bloc.dart';

@freezed
class AppsMetricsState with _$AppsMetricsState {
  const factory AppsMetricsState({
    required List<AppsMetrics>? todayMetrics,
    required List<AppsMetrics>? yesterdayMetrics,
    required List<AppsMetrics>? sevenDaysMetrics,
    required List<AppsMetrics>? thisMonthMetrics,
    required List<AppsMetrics>? lastMonthMetrics,
    required List<AppsMetrics>? thisYearsMetrics,
    required List<AppsMetrics>? lastYearsMetrics,
    required List<AppsMetrics>? lifeTimeMetrics,
    required List<AppsMetrics>? customMetrics,
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
  }) = _AppsMetricsState;

  factory AppsMetricsState.initial() => const AppsMetricsState(
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

  factory AppsMetricsState.fromJson(Map<String, dynamic> json) =>
      _$AppsMetricsStateFromJson(json);
}
