part of 'ad_unit_metrics_bloc.dart';

@freezed
class AdUnitMetricsState with _$AdUnitMetricsState {
  const factory AdUnitMetricsState({
    required List<AdUnitMetrics>? todayMetrics,
    required List<AdUnitMetrics>? yesterdayMetrics,
    required List<AdUnitMetrics>? sevenDaysMetrics,
    required List<AdUnitMetrics>? thisMonthMetrics,
    required List<AdUnitMetrics>? lastMonthMetrics,
    required List<AdUnitMetrics>? thisYearsMetrics,
    required List<AdUnitMetrics>? lastYearsMetrics,
    required List<AdUnitMetrics>? lifeTimeMetrics,
    required List<AdUnitMetrics>? customMetrics,
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
  }) = _AdUnitMetricsState;

  factory AdUnitMetricsState.initial() => const AdUnitMetricsState(
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

  factory AdUnitMetricsState.fromJson(Map<String, dynamic> json) =>
      _$AdUnitMetricsStateFromJson(json);
}
