import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics_summary.freezed.dart';

@freezed
class MetricsSummary with _$MetricsSummary {
  const factory MetricsSummary({
    required double totalEarnings,
    required int totalImpression,
    required int totalRequests,
    required double overallMatchRate,
    required int totalClicks,
    required double overallECPM,
    required double overallShowRate,
    required double overallCTR,
  }) = _MetricsSummary;
}
