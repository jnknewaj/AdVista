import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'apps_metrics_dto.freezed.dart';
part 'apps_metrics_dto.g.dart';

@freezed
class AppsMetricsDto with _$AppsMetricsDto {
  const AppsMetricsDto._();

  const factory AppsMetricsDto({
    required String appValue, // app-id
    required String appDisplayLabel,
    required Metricsdto metrics,
  }) = _AppsMetricsDto;

  factory AppsMetricsDto.fromDomain(AppsMetrics domain) {
    return AppsMetricsDto(
      appValue: domain.appValue,
      appDisplayLabel: domain.appDisplayLabel,
      metrics: Metricsdto.fromDomain(domain.metrics),
    );
  }

  AppsMetrics toDomain() {
    return AppsMetrics(
      appValue: appValue,
      appDisplayLabel: appDisplayLabel,
      metrics: metrics.toDomain(),
    );
  }

  factory AppsMetricsDto.fromRow(Map<String, dynamic> json) {
    final da = json;
    final row = json['row'];
    final dimens = row['dimensionValues'];
    final app = dimens['APP'];
    final appValue = app['value'];
    final displayLabel = app['displayLabel'];
    cprint('HSN da', da.toString());
    cprint('HSN', '--------------------------------------------------------');
    cprint('HSN row', row.toString());
    cprint('HSN', '--------------------------------------------------------');
    cprint('HSN dimens', dimens.toString());
    cprint('HSN', '--------------------------------------------------------');
    cprint('HSN app', app.toString());
    cprint('HSN', '--------------------------------------------------------');
    cprint('HSN appvalue', appValue.toString());
    cprint('HSN label', displayLabel.toString());
    final dto = AppsMetricsDto(
      appValue: row['dimensionValues']['APP']['value'],
      appDisplayLabel: row['dimensionValues']['APP']['displayLabel'],
      metrics: Metricsdto.fromRowJson(row),
    );
    return dto;
  }

  factory AppsMetricsDto.fromJson(Map<String, dynamic> json) =>
      _$AppsMetricsDtoFromJson(json);
}
