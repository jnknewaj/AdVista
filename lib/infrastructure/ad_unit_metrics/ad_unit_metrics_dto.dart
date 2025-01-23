import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_unit_metrics_dto.freezed.dart';
part 'ad_unit_metrics_dto.g.dart';

@freezed
class AdUnitMetricsDto with _$AdUnitMetricsDto {
  const AdUnitMetricsDto._();

  const factory AdUnitMetricsDto({
    required String adUnitId,
    required String adUnitType,
    required Metricsdto metrics,
  }) = _AdUnitMetricsDto;

  AdUnitMetrics toDomain() {
    return AdUnitMetrics(
      adUnitId: adUnitId,
      adUnitType: adUnitType,
      metrics: metrics.toDomain(),
    );
  }

  factory AdUnitMetricsDto.fromDomain(AdUnitMetrics adUnitMetrics) {
    return AdUnitMetricsDto(
      adUnitId: adUnitMetrics.adUnitId,
      adUnitType: adUnitMetrics.adUnitType,
      metrics: Metricsdto.fromDomain(adUnitMetrics.metrics),
    );
  }

  factory AdUnitMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$AdUnitMetricsDtoFromJson(json);

  /// Parse directly from API response row
  factory AdUnitMetricsDto.fromRowJsonForAdUnit(Map<String, dynamic> json) {
    final dto = AdUnitMetricsDto(
      adUnitId: json['dimensionValues']['AD_UNIT']['value'],
      adUnitType: json['dimensionValues']['AD_UNIT']['displayLabel'],
      metrics: Metricsdto.fromRowJson(json),
    );
    return dto;
  }
}
