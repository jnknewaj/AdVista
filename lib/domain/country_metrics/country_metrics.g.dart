// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryMetricsImpl _$$CountryMetricsImplFromJson(Map<String, dynamic> json) =>
    _$CountryMetricsImpl(
      country: json['country'] as String,
      metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryMetricsImplToJson(
        _$CountryMetricsImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'metrics': instance.metrics,
    };
