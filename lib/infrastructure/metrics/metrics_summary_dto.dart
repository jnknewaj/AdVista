import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics_summary_dto.freezed.dart';
part 'metrics_summary_dto.g.dart';

@freezed
class MetricsSummaryDto with _$MetricsSummaryDto {
  const MetricsSummaryDto._();

  const factory MetricsSummaryDto({
    @JsonKey(name: 'ESTIMATED_EARNINGS') required double totalEarnings,
    @JsonKey(name: 'IMPRESSIONS') required int totalImpression,
    @JsonKey(name: 'MATCHED_REQUESTS') required int totalRequests,
    @JsonKey(name: 'MATCH_RATE') required double overallMatchRate,
    @JsonKey(name: 'CLICKS') required int totalClicks,
    required double overallECPM,
    required double overallShowRate,
    required double overallCTR,
  }) = _MetricsSummaryDto;

  factory MetricsSummaryDto.fromDomain(MetricsSummary summary) {
    return MetricsSummaryDto(
      totalEarnings: summary.totalEarnings,
      totalImpression: summary.totalImpression,
      totalRequests: summary.totalRequests,
      overallMatchRate: summary.overallMatchRate,
      totalClicks: summary.totalClicks,
      overallECPM: summary.overallECPM,
      overallShowRate: summary.overallShowRate,
      overallCTR: summary.overallCTR,
    );
  }

  MetricsSummary toDomain() {
    return MetricsSummary(
      totalEarnings: totalEarnings,
      totalImpression: totalImpression,
      totalRequests: totalRequests,
      overallMatchRate: overallMatchRate,
      totalClicks: totalClicks,
      overallECPM: overallECPM,
      overallShowRate: overallShowRate,
      overallCTR: overallCTR,
    );
  }

  factory MetricsSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$MetricsSummaryDtoFromJson(json);
}
