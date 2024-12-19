import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todays_metrics_state.freezed.dart';
part 'todays_metrics_state.g.dart';

@freezed
class TodaysMetricsState with _$TodaysMetricsState {
  const factory TodaysMetricsState({
    required Metrics? todayMetrics,
    required Metrics? yesterdayMetrics,
    required Metrics? sevenDaysMetrics,
    required Metrics? thisMonthMetrics,
    required Metrics? lastMonthMetrics,
    required Metrics? thisYearsMetrics,
    required Metrics? lastYearsMetrics,
    required Metrics? lifeTimeMetrics,
    required Metrics? customMetrics,
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
  }) = _TodaysMetricsState;

  factory TodaysMetricsState.initial() => const TodaysMetricsState(
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

  factory TodaysMetricsState.fromJson(Map<String, dynamic> json) =>
      _$TodaysMetricsStateFromJson(json);
}
