import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_unit_metrics.freezed.dart';

@freezed
class AdUnitMetrics with _$AdUnitMetrics {
  const AdUnitMetrics._();

  const factory AdUnitMetrics({
    required String adUnitId,

    /// actually name of the ad unit.
    required String adUnitType,
    required Metrics metrics,
  }) = _AdUnitMetrics;

  factory AdUnitMetrics.empty() => AdUnitMetrics(
        adUnitId: '',
        adUnitType: '',
        metrics: Metrics.empty(),
      );
}
