import 'dart:async';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/i_metrics_repository.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_failures.dart';
import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMetricsRepository)
class MetricsRepository implements IMetricsRepository {
  final MetricsService _service;

  MetricsRepository(this._service);

  @override
  Future<Either<MetricsFailures, Metrics>> getMetrics(
    DateTimeRange range,
  ) async {
    try {
      final metrics = await _service.getMetricsForDateRange(range);
      return right(metrics);
    } on NetworkException catch (e) {
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

  @override
  Future<Either<MetricsFailures, List<CountryMetrics>>> getCountryMetrics(
    DateTimeRange range,
  ) async {
    try {
      final metricsList = await _service.getCountryMetrics(range);
      return right(metricsList);
    } on NetworkException catch (e) {
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

  @override
  Future<Either<MetricsFailures, List<AdUnitMetrics>>> getAdUnitMetrics(
    DateTimeRange range,
  ) async {
    try {
      final metricsList = await _service.getAdUnitMetrics(range);
      return right(metricsList);
    } on NetworkException catch (e) {
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

  @override
  Future<Either<MetricsFailures, List<MetricsWithDate>>>
      getMetricsForDateDimension(
    DateTimeRange range,
  ) async {
    try {
      final metricsList = await _service.getMetricsForDimension(
        range,
        ["DATE"],
      );
      return right(metricsList);
    } on NetworkException catch (e) {
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

  @override
  Future<Either<MetricsFailures, List<MetricsWithDate>>>
      getMetricsForMonthDimension(
    DateTimeRange range,
  ) async {
    try {
      final metricsList = await _service.getMetricsForDimension(
        range,
        ["MONTH"],
      );
      return right(metricsList);
    } on NetworkException catch (e) {
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

  @override
  Future<Either<MetricsFailures, List<MetricsWithDate>>> getMetricsForFiveYears(
    List<DateTimeRange> rangeList,
  ) async {
    try {
      final list = await _service.getMetricsForFiveYears(rangeList, []);
      return right(list);
    } on NetworkException catch (e) {
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
