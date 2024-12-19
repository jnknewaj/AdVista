// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_unit_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdUnitMetricsImpl _$$AdUnitMetricsImplFromJson(Map<String, dynamic> json) =>
    _$AdUnitMetricsImpl(
      adUnitId: json['adUnitId'] as String,
      adUnitType: json['adUnitType'] as String,
      metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdUnitMetricsImplToJson(_$AdUnitMetricsImpl instance) =>
    <String, dynamic>{
      'adUnitId': instance.adUnitId,
      'adUnitType': instance.adUnitType,
      'metrics': instance.metrics,
    };
