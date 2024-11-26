// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetricsSummaryDtoImpl _$$MetricsSummaryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MetricsSummaryDtoImpl(
      totalEarnings: (json['ESTIMATED_EARNINGS'] as num).toDouble(),
      totalImpression: (json['IMPRESSIONS'] as num).toInt(),
      totalRequests: (json['MATCHED_REQUESTS'] as num).toInt(),
      overallMatchRate: (json['MATCH_RATE'] as num).toDouble(),
      totalClicks: (json['CLICKS'] as num).toInt(),
      overallECPM: (json['overallECPM'] as num).toDouble(),
      overallShowRate: (json['overallShowRate'] as num).toDouble(),
      overallCTR: (json['overallCTR'] as num).toDouble(),
    );

Map<String, dynamic> _$$MetricsSummaryDtoImplToJson(
        _$MetricsSummaryDtoImpl instance) =>
    <String, dynamic>{
      'ESTIMATED_EARNINGS': instance.totalEarnings,
      'IMPRESSIONS': instance.totalImpression,
      'MATCHED_REQUESTS': instance.totalRequests,
      'MATCH_RATE': instance.overallMatchRate,
      'CLICKS': instance.totalClicks,
      'overallECPM': instance.overallECPM,
      'overallShowRate': instance.overallShowRate,
      'overallCTR': instance.overallCTR,
    };
