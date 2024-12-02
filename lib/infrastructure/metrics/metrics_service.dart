import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/domain/country_metrics/country_metrics.dart';
import 'package:advista/domain/metrics/metrics.dart';
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/date_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/country_metrics/country_metrics_dto.dart';
import 'package:advista/infrastructure/metrics/metrics_dto.dart';
import 'package:advista/infrastructure/metrics/metrics_service_helper.dart';
import 'package:advista/infrastructure/metrics/metrics_summary_dto.dart';
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
  final DateService _dateService;

  MetricsService(
    this._accountService,
    this._httpClient,
    this._tokenRepository,
    this._dateService,
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

        cprint('ABL', data.toString());

        final row = data.firstWhere(
          (element) =>
              element is Map<String, dynamic> && element.containsKey('row'),
          orElse: () => null,
        );

        if (row == null) {
          cprint('ABL null', row);
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

        cprint('CTY rows', rows.toString());

        final list = rows
            .map((row) =>
                CountryMetricsDto.fromRowJsonForCountryDimension(row['row'])
                    .toDomain())
            .toList();

        cprint('CTY', list.length.toString());

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
}
