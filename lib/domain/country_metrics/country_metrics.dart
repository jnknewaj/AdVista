import 'package:advista/domain/metrics/metrics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_metrics.freezed.dart';

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
}
