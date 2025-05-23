import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics_dto.freezed.dart';
part 'metrics_dto.g.dart';

@freezed
class Metricsdto with _$Metricsdto {
  const Metricsdto._();

  const factory Metricsdto({
    required double earnings,
    required int impression,
    required int requests,
    required double matchRate,
    required int clicks,
    required double eCPM,
    required double showRate,
    required double cTR,
  }) = _Metricsdto;

  factory Metricsdto.fromDomain(Metrics metrics) {
    return Metricsdto(
      earnings: metrics.earnings,
      impression: metrics.impression,
      requests: metrics.requests,
      matchRate: metrics.matchRate,
      clicks: metrics.clicks,
      eCPM: metrics.eCPM,
      showRate: metrics.showRate,
      cTR: metrics.cTR,
    );
  }

  Metrics toDomain() {
    return Metrics(
      earnings: earnings,
      impression: impression,
      requests: requests,
      matchRate: matchRate,
      clicks: clicks,
      eCPM: eCPM,
      showRate: showRate,
      cTR: cTR,
    );
  }

  factory Metricsdto.fromJsonWithCalculation(Map<String, dynamic> json) {
    final metricValues = json['row']['metricValues'];

    final clicks = int.parse(metricValues['CLICKS']['integerValue']);
    final requests = int.parse(metricValues['AD_REQUESTS']['integerValue']);
    final impressions = int.parse(metricValues['IMPRESSIONS']['integerValue']);
    final earningsMicros =
        int.parse(metricValues['ESTIMATED_EARNINGS']['microsValue']);

    final earnings = earningsMicros / 1000000;

    final matchRate = requests > 0 ? (impressions / requests) * 100 : 0.0;
    final eCPM = impressions > 0 ? (earnings / impressions) * 1000 : 0.0;
    final showRate = requests > 0 ? (impressions / requests) * 100 : 0.0;
    final cTR = impressions > 0 ? (clicks / impressions) * 100 : 0.0;

    return Metricsdto(
      earnings: earnings,
      impression: impressions,
      requests: requests,
      matchRate: matchRate,
      clicks: clicks,
      eCPM: eCPM,
      showRate: showRate,
      cTR: cTR,
    );
  }

  /// Factory for parsing JSON rows (handles country-specific data)
  factory Metricsdto.fromRowJson(Map<String, dynamic> row) {
    final metricValues = row['metricValues'] as Map<String, dynamic>? ?? {};

    final clicks =
        int.tryParse(metricValues['CLICKS']?['integerValue'] ?? '0') ?? 0;
    final requests =
        int.tryParse(metricValues['AD_REQUESTS']?['integerValue'] ?? '0') ?? 0;
    final impressions =
        int.tryParse(metricValues['IMPRESSIONS']?['integerValue'] ?? '0') ?? 0;
    final earningsMicros = int.tryParse(
            metricValues['ESTIMATED_EARNINGS']?['microsValue'] ?? '0') ??
        0;

    final earnings = earningsMicros / 1000000;
    final matchRate = requests > 0 ? (impressions / requests) * 100 : 0.0;
    final eCPM = impressions > 0 ? (earnings / impressions) * 1000 : 0.0;
    final showRate = requests > 0 ? (impressions / requests) * 100 : 0.0;
    final cTR = impressions > 0 ? (clicks / impressions) * 100 : 0.0;

    return Metricsdto(
      earnings: earnings,
      impression: impressions,
      requests: requests,
      matchRate: matchRate,
      clicks: clicks,
      eCPM: eCPM,
      showRate: showRate,
      cTR: cTR,
    );
  }

  /// **New Function to Parse from Specific Format**
  factory Metricsdto.fromHydratedBloc(Map<String, dynamic> formattedMap) {
    return Metricsdto(
      earnings: formattedMap['earnings'] ?? 0.0,
      impression: formattedMap['impression'] ?? 0,
      requests: formattedMap['requests'] ?? 0,
      matchRate: formattedMap['matchRate'] ?? 0.0,
      clicks: formattedMap['clicks'] ?? 0,
      eCPM: formattedMap['eCPM'] ?? 0.0,
      showRate: formattedMap['showRate'] ?? 0.0,
      cTR: formattedMap['cTR'] ?? 0.0,
    );
  }

  factory Metricsdto.fromJson(Map<String, dynamic> json) =>
      _$MetricsdtoFromJson(json);
}
