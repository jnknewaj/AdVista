// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetricsdtoImpl _$$MetricsdtoImplFromJson(Map<String, dynamic> json) =>
    _$MetricsdtoImpl(
      earnings: (json['earnings'] as num).toDouble(),
      impression: (json['impression'] as num).toInt(),
      requests: (json['requests'] as num).toInt(),
      matchRate: (json['matchRate'] as num).toDouble(),
      clicks: (json['clicks'] as num).toInt(),
      eCPM: (json['eCPM'] as num).toDouble(),
      showRate: (json['showRate'] as num).toDouble(),
      cTR: (json['cTR'] as num).toDouble(),
    );

Map<String, dynamic> _$$MetricsdtoImplToJson(_$MetricsdtoImpl instance) =>
    <String, dynamic>{
      'earnings': instance.earnings,
      'impression': instance.impression,
      'requests': instance.requests,
      'matchRate': instance.matchRate,
      'clicks': instance.clicks,
      'eCPM': instance.eCPM,
      'showRate': instance.showRate,
      'cTR': instance.cTR,
    };
