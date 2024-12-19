// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_wise_metrics_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryWiseMetricsStateImpl _$$CountryWiseMetricsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryWiseMetricsStateImpl(
      todayMetrics: (json['todayMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      yesterdayMetrics: (json['yesterdayMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      sevenDaysMetrics: (json['sevenDaysMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      thisMonthMetrics: (json['thisMonthMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMonthMetrics: (json['lastMonthMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      thisYearsMetrics: (json['thisYearsMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastYearsMetrics: (json['lastYearsMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      lifeTimeMetrics: (json['lifeTimeMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
      customMetrics: (json['customMetrics'] as List<dynamic>?)
          ?.map((e) => CountryMetrics.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$$CountryWiseMetricsStateImplToJson(
        _$CountryWiseMetricsStateImpl instance) =>
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
