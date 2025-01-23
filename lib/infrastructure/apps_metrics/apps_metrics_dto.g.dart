// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppsMetricsDtoImpl _$$AppsMetricsDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppsMetricsDtoImpl(
      appValue: json['appValue'] as String,
      appDisplayLabel: json['appDisplayLabel'] as String,
      metrics: Metricsdto.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppsMetricsDtoImplToJson(
        _$AppsMetricsDtoImpl instance) =>
    <String, dynamic>{
      'appValue': instance.appValue,
      'appDisplayLabel': instance.appDisplayLabel,
      'metrics': instance.metrics,
    };
