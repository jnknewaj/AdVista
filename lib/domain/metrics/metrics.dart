import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics.freezed.dart';
part 'metrics.g.dart';

@freezed
class Metrics with _$Metrics {
  const Metrics._(); // Private constructor for custom getters or methods

  const factory Metrics({
    required double earnings,
    required int impression,
    required int requests,
    required double matchRate,
    required int clicks,
    required double eCPM,
    required double showRate,
    required double cTR,
  }) = _Metrics;

  factory Metrics.empty() => const Metrics(
        earnings: 0.0,
        impression: 0,
        requests: 0,
        matchRate: 0.0,
        clicks: 0,
        eCPM: 0.0,
        showRate: 0.0,
        cTR: 0.0,
      );

  factory Metrics.fromJson(Map<String, dynamic> json) =>
      _$MetricsFromJson(json);
}
