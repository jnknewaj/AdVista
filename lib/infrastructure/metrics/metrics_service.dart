import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/metrics/metrics_summary_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class MetricsService {
  final BaseService _baseService;

  MetricsService(this._baseService);

  /// Throws [ServiceException]
  Future<MetricsSummaryDto> fetchMetricsSummary({
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
      throw ServiceException('HTTP error (${e.statusCode}): ${e.responseBody}');
    } on Exception catch (e) {
      throw ServiceException('Unexpected error: $e');
    }
  }
}
