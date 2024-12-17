import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'apps_metrics_dto.freezed.dart';
part 'apps_metrics_dto.g.dart';

@freezed
class AppsMetricsDto with _$AppsMetricsDto {
  const AppsMetricsDto._();

  const factory AppsMetricsDto({
    required String appValue, // app-id
    required String appDisplayLabel,
    required int adRequests,
    required int clicks,
    required int impressions,
    required double impressionCtr,
    required double impressionRpm,
    required int matchedRequests,
    required double matchRate,
    required double showRate,
    required double estimatedEarnings,
  }) = _AppsMetricsDto;

  factory AppsMetricsDto.fromDomain(AppsMetrics domain) {
    return AppsMetricsDto(
      appValue: domain.appValue,
      appDisplayLabel: domain.appDisplayLabel,
      adRequests: domain.adRequests,
      clicks: domain.clicks,
      impressions: domain.impressions,
      impressionCtr: domain.impressionCtr,
      impressionRpm: domain.impressionRpm,
      matchedRequests: domain.matchedRequests,
      matchRate: domain.matchRate,
      showRate: domain.showRate,
      estimatedEarnings: domain.estimatedEarnings,
    );
  }

  AppsMetrics toDomain() {
    return AppsMetrics(
      appValue: appValue,
      appDisplayLabel: appDisplayLabel,
      adRequests: adRequests,
      clicks: clicks,
      impressions: impressions,
      impressionCtr: impressionCtr,
      impressionRpm: impressionRpm,
      matchedRequests: matchedRequests,
      matchRate: matchRate,
      showRate: showRate,
      estimatedEarnings: estimatedEarnings,
    );
  }

  factory AppsMetricsDto.fromRow(Map<String, dynamic> row) {
    final dimensionValues = row['dimensionValues']['APP'];
    final metricValues = row['metricValues'];

    final earningsMicros =
        int.parse(metricValues['ESTIMATED_EARNINGS']['microsValue']);

    return AppsMetricsDto(
      appValue: dimensionValues['value'] as String,
      appDisplayLabel: dimensionValues['displayLabel'] as String,
      adRequests: int.parse(metricValues['AD_REQUESTS']['integerValue']),
      clicks: int.parse(metricValues['CLICKS']['integerValue']),
      impressions: int.parse(metricValues['IMPRESSIONS']['integerValue']),
      impressionCtr: (metricValues['IMPRESSION_CTR']['doubleValue'] as double),
      impressionRpm: (metricValues['IMPRESSION_RPM']['doubleValue'] as double),
      matchedRequests:
          int.parse(metricValues['MATCHED_REQUESTS']['integerValue']),
      matchRate: (metricValues['MATCH_RATE']['doubleValue'] as double),
      showRate: (metricValues['SHOW_RATE']['doubleValue'] as double),
      estimatedEarnings: earningsMicros / 1000000,
    );
  }

  factory AppsMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$AppsMetricsDtoFromJson(json);
}
