// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppsMetricsImpl _$$AppsMetricsImplFromJson(Map<String, dynamic> json) =>
    _$AppsMetricsImpl(
      appValue: json['appValue'] as String,
      appDisplayLabel: json['appDisplayLabel'] as String,
      metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppsMetricsImplToJson(_$AppsMetricsImpl instance) =>
    <String, dynamic>{
      'appValue': instance.appValue,
      'appDisplayLabel': instance.appDisplayLabel,
      'metrics': instance.metrics,
    };
