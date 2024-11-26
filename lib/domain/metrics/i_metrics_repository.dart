import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:dartz/dartz.dart';

abstract class IMetricsRepository {
  /// To get aggregate data in a given time range
  Future<Either<MetricsFailures, MetricsSummary>> getMetricsSummary({
    required DateTime startDate,
    required DateTime endDate,
  });
}
