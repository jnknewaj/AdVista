import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IMetricsRepository {
  Future<Either<MetricsFailures, Metrics>> getMetrics(DateTimeRange range);

  Future<Either<MetricsFailures, List<CountryMetrics>>> getCountryMetrics(
    DateTimeRange range,
  );
}
