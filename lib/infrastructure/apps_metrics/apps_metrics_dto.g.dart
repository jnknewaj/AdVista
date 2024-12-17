// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apps_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppsMetricsDtoImpl _$$AppsMetricsDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppsMetricsDtoImpl(
      appValue: json['appValue'] as String,
      appDisplayLabel: json['appDisplayLabel'] as String,
      adRequests: (json['adRequests'] as num).toInt(),
      clicks: (json['clicks'] as num).toInt(),
      impressions: (json['impressions'] as num).toInt(),
      impressionCtr: (json['impressionCtr'] as num).toDouble(),
      impressionRpm: (json['impressionRpm'] as num).toDouble(),
      matchedRequests: (json['matchedRequests'] as num).toInt(),
      matchRate: (json['matchRate'] as num).toDouble(),
      showRate: (json['showRate'] as num).toDouble(),
      estimatedEarnings: (json['estimatedEarnings'] as num).toDouble(),
    );

Map<String, dynamic> _$$AppsMetricsDtoImplToJson(
        _$AppsMetricsDtoImpl instance) =>
    <String, dynamic>{
      'appValue': instance.appValue,
      'appDisplayLabel': instance.appDisplayLabel,
      'adRequests': instance.adRequests,
      'clicks': instance.clicks,
      'impressions': instance.impressions,
      'impressionCtr': instance.impressionCtr,
      'impressionRpm': instance.impressionRpm,
      'matchedRequests': instance.matchedRequests,
      'matchRate': instance.matchRate,
      'showRate': instance.showRate,
      'estimatedEarnings': instance.estimatedEarnings,
    };
