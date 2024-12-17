import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_metrics.freezed.dart';
part 'apps_metrics.g.dart';

@freezed
class AppsMetrics with _$AppsMetrics {
  const AppsMetrics._();
  const factory AppsMetrics({
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
  }) = _AppsMetrics;

  factory AppsMetrics.fromJson(Map<String, dynamic> json) =>
      _$AppsMetricsFromJson(json);
}
