import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_metrics.freezed.dart';
part 'country_metrics.g.dart';

@freezed
class CountryMetrics with _$CountryMetrics {
  const CountryMetrics._();

  const factory CountryMetrics({
    required String country,
    required Metrics metrics,
  }) = _CountryMetrics;

  factory CountryMetrics.empty() => CountryMetrics(
        country: '',
        metrics: Metrics.empty(),
      );

  factory CountryMetrics.fromJson(Map<String, dynamic> json) =>
      _$CountryMetricsFromJson(json);
}
