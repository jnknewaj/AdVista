import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'apps_metrics.freezed.dart';
part 'apps_metrics.g.dart';

@freezed
class AppsMetrics with _$AppsMetrics {
  const AppsMetrics._();
  const factory AppsMetrics({
    required String appValue, // app-id
    required String appDisplayLabel,
    required Metrics metrics,
  }) = _AppsMetrics;

  factory AppsMetrics.empty() => AppsMetrics(
        appValue: '',
        appDisplayLabel: '',
        metrics: Metrics.empty(),
      );

  factory AppsMetrics.fromJson(Map<String, dynamic> json) =>
      _$AppsMetricsFromJson(json);
}
