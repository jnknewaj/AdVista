// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryMetricsDtoImpl _$$CountryMetricsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryMetricsDtoImpl(
      country: json['country'] as String,
      metrics: Metricsdto.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryMetricsDtoImplToJson(
        _$CountryMetricsDtoImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'metrics': instance.metrics,
    };
