import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMetricsRepository)
class MetricsRepository implements IMetricsRepository {
  final MetricsService _service;

  MetricsRepository(this._service);

  @override
  Future<Either<MetricsFailures, MetricsSummary>> getMetricsSummary(
    DateTime endDate,
  ) async {
    try {
      // Fetch DTO from the service
      final dto = await _service.fetchMetricsSummary(endDate);

      // Convert DTO to domain and return as a successful result
      return right(dto.toDomain());
    } on ServiceException catch (e) {
      // Handle specific service-level exceptions
      return left(MetricsFailures.serviceError(msg: e.message));
    } on HttpException catch (e) {
      // Handle HTTP-related exceptions with the status code or message
      return left(MetricsFailures.httpError(
        code: e.statusCode,
        msg: e.responseBody,
      ));
    } on IdNotFoundException catch (e) {
      // Handle any unexpected errors
      return left(MetricsFailures.idNotFoundError(msg: e.msg));
    } catch (e) {
      return left(MetricsFailures.unknown(msg: e.toString()));
    }
  }

  @override
  Future<Either<MetricsFailures, MetricsSummary>> getMetrics({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      // Fetch DTO from the service
      final dto = await _service.fetchMetrics(
        startDate: startDate,
        endDate: endDate,
      );

      // Convert DTO to domain and return as a successful result
      return right(dto.toDomain());
    } on ServiceException catch (e) {
      // Handle specific service-level exceptions
      return left(MetricsFailures.serviceError(msg: e.message));
    } on HttpException catch (e) {
      // Handle HTTP-related exceptions with the status code or message
      return left(MetricsFailures.httpError(
        code: e.statusCode,
        msg: e.responseBody,
      ));
    } on IdNotFoundException catch (e) {
      // Handle any unexpected errors
      return left(MetricsFailures.idNotFoundError(msg: e.msg));
    } catch (e) {
      return left(MetricsFailures.unknown(msg: e.toString()));
    }
  }
}
