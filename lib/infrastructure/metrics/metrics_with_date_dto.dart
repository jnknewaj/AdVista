import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics_with_date_dto.freezed.dart';

@freezed
class MetricsWithDateDto with _$MetricsWithDateDto {
  const MetricsWithDateDto._();

  const factory MetricsWithDateDto({
    required String date,
    required int requests,
    required int matchedRequests,
    required int clicks,
    required double earnings,
    required int impressions,
    required double cTR,
    required double eCPM,
    required double matchRate,
    required double showRate,
  }) = _MetricsWithDateDto;

  factory MetricsWithDateDto.fromDomain(MetricsWithDate domain) {
    return MetricsWithDateDto(
      date: domain.date,
      requests: domain.requests,
      matchedRequests: domain.matchedRequests,
      clicks: domain.clicks,
      earnings: domain.earnings,
      impressions: domain.impressions,
      cTR: domain.cTR,
      eCPM: domain.eCPM,
      matchRate: domain.matchRate,
      showRate: domain.showRate,
    );
  }

  MetricsWithDate toDomain() {
    return MetricsWithDate(
      date: date,
      requests: requests,
      matchedRequests: matchedRequests,
      clicks: clicks,
      earnings: earnings,
      impressions: impressions,
      cTR: cTR,
      eCPM: eCPM,
      matchRate: matchRate,
      showRate: showRate,
    );
  }

  factory MetricsWithDateDto.fromResponse(Map<String, dynamic> entry) {
    final row = entry['row'] ?? {};
    final dimensionValues = row['dimensionValues'] ?? {};
    final metricValues = row['metricValues'] ?? {};

    return MetricsWithDateDto(
      date: dimensionValues['DATE']?['value'] ??
          dimensionValues['MONTH']?['value'],
      requests:
          int.tryParse(metricValues['AD_REQUESTS']?['integerValue'] ?? '0') ??
              0,
      matchedRequests: int.tryParse(
              metricValues['MATCHED_REQUESTS']?['integerValue'] ?? '0') ??
          0,
      clicks: int.tryParse(metricValues['CLICKS']?['integerValue'] ?? '0') ?? 0,
      earnings: int.parse(metricValues['ESTIMATED_EARNINGS']['microsValue']) /
          1000000.0,
      impressions:
          int.tryParse(metricValues['IMPRESSIONS']?['integerValue'] ?? '0') ??
              0,
      cTR: double.tryParse(
              metricValues['IMPRESSION_CTR']?['doubleValue']?.toString() ??
                  '0.0') ??
          0.0,
      eCPM: double.tryParse(
              metricValues['IMPRESSION_RPM']?['doubleValue']?.toString() ??
                  '0.0') ??
          0.0,
      matchRate: double.tryParse(
              metricValues['MATCH_RATE']?['doubleValue']?.toString() ??
                  '0.0') ??
          0.0,
      showRate: double.tryParse(
              metricValues['SHOW_RATE']?['doubleValue']?.toString() ?? '0.0') ??
          0.0,
    );
  }

  // factory MetricsWithDateDto.fromJson(Map<String, dynamic> json) =>
  //     _$MetricsWithDateDtoFromJson(json);
}
