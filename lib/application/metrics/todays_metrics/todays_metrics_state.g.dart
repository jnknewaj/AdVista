// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_metrics_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodaysMetricsStateImpl _$$TodaysMetricsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$TodaysMetricsStateImpl(
      todayMetrics: json['todayMetrics'] == null
          ? null
          : Metrics.fromJson(json['todayMetrics'] as Map<String, dynamic>),
      yesterdayMetrics: json['yesterdayMetrics'] == null
          ? null
          : Metrics.fromJson(json['yesterdayMetrics'] as Map<String, dynamic>),
      sevenDaysMetrics: json['sevenDaysMetrics'] == null
          ? null
          : Metrics.fromJson(json['sevenDaysMetrics'] as Map<String, dynamic>),
      thisMonthMetrics: json['thisMonthMetrics'] == null
          ? null
          : Metrics.fromJson(json['thisMonthMetrics'] as Map<String, dynamic>),
      lastMonthMetrics: json['lastMonthMetrics'] == null
          ? null
          : Metrics.fromJson(json['lastMonthMetrics'] as Map<String, dynamic>),
      thisYearsMetrics: json['thisYearsMetrics'] == null
          ? null
          : Metrics.fromJson(json['thisYearsMetrics'] as Map<String, dynamic>),
      lastYearsMetrics: json['lastYearsMetrics'] == null
          ? null
          : Metrics.fromJson(json['lastYearsMetrics'] as Map<String, dynamic>),
      lifeTimeMetrics: json['lifeTimeMetrics'] == null
          ? null
          : Metrics.fromJson(json['lifeTimeMetrics'] as Map<String, dynamic>),
      customMetrics: json['customMetrics'] == null
          ? null
          : Metrics.fromJson(json['customMetrics'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool,
      todayError: json['todayError'] as String?,
      yesterdayError: json['yesterdayError'] as String?,
      last7DaysError: json['last7DaysError'] as String?,
      thisMonthError: json['thisMonthError'] as String?,
      lastMonthError: json['lastMonthError'] as String?,
      thisYearError: json['thisYearError'] as String?,
      lastYearError: json['lastYearError'] as String?,
      customError: json['customError'] as String?,
      lifeTimeError: json['lifeTimeError'] as String?,
    );

Map<String, dynamic> _$$TodaysMetricsStateImplToJson(
        _$TodaysMetricsStateImpl instance) =>
    <String, dynamic>{
      'todayMetrics': instance.todayMetrics,
      'yesterdayMetrics': instance.yesterdayMetrics,
      'sevenDaysMetrics': instance.sevenDaysMetrics,
      'thisMonthMetrics': instance.thisMonthMetrics,
      'lastMonthMetrics': instance.lastMonthMetrics,
      'thisYearsMetrics': instance.thisYearsMetrics,
      'lastYearsMetrics': instance.lastYearsMetrics,
      'lifeTimeMetrics': instance.lifeTimeMetrics,
      'customMetrics': instance.customMetrics,
      'isLoading': instance.isLoading,
      'todayError': instance.todayError,
      'yesterdayError': instance.yesterdayError,
      'last7DaysError': instance.last7DaysError,
      'thisMonthError': instance.thisMonthError,
      'lastMonthError': instance.lastMonthError,
      'thisYearError': instance.thisYearError,
      'lastYearError': instance.lastYearError,
      'customError': instance.customError,
      'lifeTimeError': instance.lifeTimeError,
    };
