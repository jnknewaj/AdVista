import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:advista/domain/ad_unit_metrics/ad_unit_metrics.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/domain/metrics/metrics_with_date.dart';
import 'package:advista/infrastructure/ad_unit_metrics/ad_unit_metrics_dto.dart';
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/country_metrics/country_metrics_dto.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:advista/infrastructure/metrics/metrics_service_helper.dart';
import 'package:advista/infrastructure/metrics/metrics_summary_dto.dart';
import 'package:advista/infrastructure/metrics/metrics_with_date_dto.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/helper.dart';
import 'package:advista/utils/map.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton()
class MetricsService {
  /// to find admob id
  final AccountService _accountService;
  final http.Client _httpClient;

  /// to get accessToken
  final ITokenRepository _tokenRepository;

  MetricsService(
    this._accountService,
    this._httpClient,
    this._tokenRepository,
  );

  Future<Metrics> getMetricsForDateRange(DateTimeRange range) async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();

    final requestBody = buildRequestBody(range, []);
    final headers = buildHeaders(accessToken);

    String url =
        "https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate";

    try {
      final response = await _httpClient.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        final row = data.firstWhere(
          (element) =>
              element is Map<String, dynamic> && element.containsKey('row'),
          orElse: () => null,
        );

        if (row == null) {
          return Metrics.empty();
        }

        final metricsDto = Metricsdto.fromJsonWithCalculation(row);

        return metricsDto.toDomain();
      } else {
        throw ServerException(
            message: 'Exception in http response. ',
            code: 'Code : ${response.statusCode}');
      }
    } on SocketException catch (_) {
      throw NetworkException('Check Network');
    } on TimeoutException catch (_) {
      throw TimeoutException('The request timed out.');
    } on ParsingException catch (_) {
      rethrow;
    } on TokenNotFoundException catch (e) {
      rethrow;
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    }
  }

  /// Throws
  /// - [TokenNotFoundException]
  /// - Other exception maping [TokenFailures]
  ///
  Future<String> _provideAccessToken() async {
    final accessTokenEither = await _tokenRepository.getValidAccessToken();

    if (accessTokenEither.isLeft()) {
      throw mapTokenFailuresToException(accessTokenEither.getLeft() ??
          const TokenFailures.unknown(msg: 'F2E'));
    }

    final accessToken = accessTokenEither.getRight();

    if (accessToken == null) {
      throw TokenNotFoundException('Access token not found in repository');
    }

    return accessToken;
  }

  Future<List<CountryMetrics>> getCountryMetrics(DateTimeRange range) async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();

    final requestBody = buildRequestBody(range, ["COUNTRY"]);
    final headers = buildHeaders(accessToken);

    String url =
        "https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate";

    try {
      final response = await _httpClient.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        final rows = data.where((item) => item['row'] != null).toList();

        final list = rows
            .map((row) =>
                CountryMetricsDto.fromRowJsonForCountryDimension(row['row'])
                    .toDomain())
            .toList();

        return list;
      } else {
        throw ServerException(
            message: 'Exception in http response. ',
            code: 'Code : ${response.statusCode}');
      }
    } on SocketException catch (_) {
      throw NetworkException('Check Network');
    } on TimeoutException catch (_) {
      throw TimeoutException('The request timed out.');
    } on ParsingException catch (_) {
      rethrow;
    } on TokenNotFoundException catch (e) {
      rethrow;
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    }
  }

  Future<List<AdUnitMetrics>> getAdUnitMetrics(DateTimeRange range) async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();

    final requestBody = buildRequestBody(range, ["AD_UNIT"]);
    final headers = buildHeaders(accessToken);

    String url =
        "https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate";

    try {
      final response = await _httpClient.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);

        final rows = data.where((item) => item['row'] != null).toList();

        final list = rows
            .map((row) =>
                AdUnitMetricsDto.fromRowJsonForAdUnit(row['row']).toDomain())
            .toList();

        return list;
      } else {
        throw ServerException(
            message: 'Exception in http response. ',
            code: 'Code : ${response.statusCode}');
      }
    } on SocketException catch (_) {
      throw NetworkException('Check Network');
    } on TimeoutException catch (_) {
      throw TimeoutException('The request timed out.');
    } on ParsingException catch (_) {
      rethrow;
    } on TokenNotFoundException catch (e) {
      rethrow;
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    }
  }

  Future<List<MetricsWithDate>> getMetricsForDimension(
    DateTimeRange range,
    List<String> dimension,
  ) async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();

    final requestBody = buildRequestBody(range, dimension);
    final headers = buildHeaders(accessToken);

    String url =
        "https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate";

    try {
      final response = await _httpClient.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body) as List<dynamic>;
        return jsonResponse
            .where((entry) => entry.containsKey('row')) // Only process rows
            .map((entry) => MetricsWithDateDto.fromResponse(entry).toDomain())
            .toList();
      } else {
        throw ServerException(
            message: 'Exception in http response. ',
            code: 'Code : ${response.statusCode}');
      }
    } on SocketException catch (_) {
      throw NetworkException('Check Network');
    } on TimeoutException catch (_) {
      throw TimeoutException('The request timed out.');
    } on ParsingException catch (_) {
      rethrow;
    } on TokenNotFoundException catch (_) {
      rethrow;
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    }
  }

  Future<List<MetricsWithDate>> getMetricsForFiveYears(
    List<DateTimeRange> ranges,
    List<String> dimensions,
  ) async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }

    final accessToken = await _provideAccessToken();
    final headers = buildHeaders(accessToken);
    final String url =
        "https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate";

    List<MetricsWithDate> allMetrics = [];

    for (var range in ranges) {
      final requestBody = buildRequestBody(range, dimensions);

      try {
        final response = await _httpClient.post(
          Uri.parse(url),
          headers: headers,
          body: jsonEncode(requestBody),
        );

        if (response.statusCode == 200) {
          final jsonResponse = jsonDecode(response.body) as List<dynamic>;

          final row1 = jsonResponse.firstWhere(
            (element) =>
                element is Map<String, dynamic> && element.containsKey('row'),
            orElse: () => null,
          );

          allMetrics.add(MetricsWithDateDto.fromResponseAppendingYear(
                  row1, range.start.year)
              .toDomain());
        } else {
          throw ServerException(
              message: 'HTTP error: ${response.statusCode}',
              code: '${response.statusCode}');
        }
      } on Exception catch (e) {
        // Catch and rethrow custom exceptions
        if (e is SocketException ||
            e is TimeoutException ||
            e is ParsingException ||
            e is TokenNotFoundException ||
            e is ServerException ||
            e is IdNotFoundException) {
          rethrow;
        }
        throw Exception('Unhandled exception: $e');
      }
    }

    return allMetrics;
  }
}
