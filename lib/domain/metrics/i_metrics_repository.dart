import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:dartz/dartz.dart';

abstract class IMetricsRepository {
  Future<Either<MetricsFailures, Metrics>> getTodaysMetrics();
}
