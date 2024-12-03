import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_metrics_dto.freezed.dart';
part 'country_metrics_dto.g.dart';

@freezed
class CountryMetricsDto with _$CountryMetricsDto {
  const CountryMetricsDto._();

  const factory CountryMetricsDto({
    required String country,
    required Metricsdto metrics,
  }) = _CountryMetricsDto;

  CountryMetrics toDomain() {
    return CountryMetrics(
      country: country,
      metrics: metrics.toDomain(),
    );
  }

  factory CountryMetricsDto.fromDomain(CountryMetrics countryMetrics) {
    return CountryMetricsDto(
      country: countryMetrics.country,
      metrics: Metricsdto.fromDomain(countryMetrics.metrics),
    );
  }

  factory CountryMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$CountryMetricsDtoFromJson(json);

  /// Parse directly from API response row
  factory CountryMetricsDto.fromRowJsonForCountryDimension(
      Map<String, dynamic> json) {
    final dto = CountryMetricsDto(
      country: json['dimensionValues']['COUNTRY']['value'],
      metrics: Metricsdto.fromRowJson(json),
    );
    cprint('CTY DTO', dto.toDomain().country);
    return dto;
  }
}
