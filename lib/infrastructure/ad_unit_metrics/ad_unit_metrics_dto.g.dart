// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_unit_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdUnitMetricsDtoImpl _$$AdUnitMetricsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdUnitMetricsDtoImpl(
      adUnitId: json['adUnitId'] as String,
      adUnitType: json['adUnitType'] as String,
      metrics: Metricsdto.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdUnitMetricsDtoImplToJson(
        _$AdUnitMetricsDtoImpl instance) =>
    <String, dynamic>{
      'adUnitId': instance.adUnitId,
      'adUnitType': instance.adUnitType,
      'metrics': instance.metrics,
    };
