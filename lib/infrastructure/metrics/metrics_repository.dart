import 'dart:async';
import 'dart:io';

import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_summary.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMetricsRepository)
class MetricsRepository implements IMetricsRepository {
  final MetricsService _service;
  final DateService _dateService;

  MetricsRepository(
    this._service,
    this._dateService,
  );

  @override
  Future<Either<MetricsFailures, Metrics>> getMetrics(
    DateTimeRange range,
  ) async {
    try {
      final metrics = await _service.getMetricsForDateRange(range);
      return right(metrics);
    } on SocketException catch (e) {
      return left(MetricsFailures.networkFailure(e.message));
    } on TimeoutException catch (e) {
      return left(MetricsFailures.timeout(e.message ?? "Response timeout"));
    } on ParsingException catch (e) {
      return left(MetricsFailures.parsingFailure(e.message));
    } on TokenNotFoundException catch (e) {
      return left(MetricsFailures.tokenNotFound(e.message));
    } on ServerException catch (e) {
      return left(MetricsFailures.serverFailure(
          'Server failure : ${e.message} || ${e.code}'));
    } on IdNotFoundException catch (e) {
      return left(MetricsFailures.idNotFound(e.msg));
    } catch (e) {
      return left(MetricsFailures.unknown(e.toString()));
    }
  }
}
