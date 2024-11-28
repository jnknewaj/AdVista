import 'dart:io';

import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_summary_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class MetricsService {
  final BaseService _baseService;
  final AccountService _accountService;

  MetricsService(this._baseService, this._accountService);

  /// Throws [ServiceException]
  ///
  /// Throws [IdNotFoundException] if admob id not found in storage
  Future<MetricsSummaryDto> fetchMetricsSummary(
    DateTime endDate,
  ) async {
    // Temp. Get startdate from storage
    final startDate = DateTime.now();

    final body = {
      "dateRange": {
        "startDate": formatDate(startDate),
        "endDate": formatDate(endDate),
      },
      "metrics": [
        "ESTIMATED_EARNINGS",
        "IMPRESSIONS",
        "MATCHED_REQUESTS",
        "MATCH_RATE",
        "CLICKS"
      ]
    };

    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer YOUR_ACCESS_TOKEN",
    };

    final accountId = await _accountService.getAccountId();

    if (accountId == null) {
      throw IdNotFoundException(msg: 'Admob Id Not Found in The Storage');
    }

    try {
      final responseJson = await _baseService.post(
        url:
            'https://admob.googleapis.com/v1/accounts/$accountId/mediationReport:generate',
        headers: headers,
        body: body,
      );

      return MetricsSummaryDto.fromJson(responseJson);
    } on HttpException catch (e) {
      rethrow;
    }
  }

  /// Throws [ServiceException]
  ///
  /// Throws [IdNotFoundException] if admob id not found in storage
  Future<MetricsSummaryDto> fetchMetrics({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final body = {
      "dateRange": {
        "startDate": formatDate(startDate),
        "endDate": formatDate(endDate),
      },
      "metrics": [
        "ESTIMATED_EARNINGS",
        "IMPRESSIONS",
        "MATCHED_REQUESTS",
        "MATCH_RATE",
        "CLICKS"
      ]
    };

    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer YOUR_ACCESS_TOKEN",
    };

    try {
      final responseJson = await _baseService.post(
        url:
            'https://admob.googleapis.com/v1/accounts/{account_id}/mediationReport:generate',
        headers: headers,
        body: body,
      );

      return MetricsSummaryDto.fromJson(responseJson);
    } on HttpException catch (e) {
      rethrow;
    }
  }
}
