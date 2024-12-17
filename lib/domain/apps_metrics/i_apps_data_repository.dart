import 'package:advista/domain/apps_metrics/apps.dart';
import 'package:advista/domain/apps_metrics/apps_data_failures.dart';
import 'package:advista/domain/apps_metrics/apps_metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class IAppsDataRepository {
  Future<Either<AppsDataFailures, List<Apps>>> getApps();

  /// All the other metrics handled through MetricRepository.
  ///
  /// But in case of apps, keeping things in a bit separate.
  Future<Either<AppsDataFailures, List<AppsMetrics>>> getAppsMetrics(
    DateTimeRange range,
  );
}
