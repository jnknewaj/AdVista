import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:advista/domain/adsense/payments.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/adsense/payments_dto.dart';
import 'package:advista/infrastructure/core/account_service.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/infrastructure/metrics/metrics_service_helper.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:advista/utils/helper.dart';
import 'package:advista/utils/map.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton()
class AdsenseService {
  final AccountService _accountService;
  final http.Client _httpClient;

  /// to get accessToken
  final ITokenRepository _tokenRepository;

  AdsenseService(this._accountService, this._httpClient, this._tokenRepository);

  /// Throws
  /// - [TokenNotFoundException]
  /// - Other exception maping [TokenFailures]
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

  Future<Payments> fetchTotalEarning() async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();
    final headers = buildHeaders(accessToken);

    String url =
        "https://adsense.googleapis.com/v2/accounts/$accountId/payments";

    try {
      final response = await _httpClient.get(
        Uri.parse(url),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final obj = jsonDecode(response.body);

        // Extract the unpaid payment using PaymentsDto
        final unpaidPayment = PaymentsDto.getUnpaidPayment(obj);
        if (unpaidPayment != null) {
          return unpaidPayment;
        }
        throw NoUnpaidPaymentException('Current Balance Is Empty');
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
      cprint('BKL code: ', e.code);
      cprint('BKL msg: ', e.message);
      throw ServerException(message: e.message, code: e.code);
    } on IdNotFoundException catch (_) {
      rethrow;
    }
  }

  ///Throws
  /// - [TokenNotFoundException]
  /// - [NetworkException]
  /// - [IdNotFoundException]
  /// - [ServerException]
  /// - [TimeoutException]
  /// - [ParsingException]
  Future<List<Payments>> fetchAllPayments() async {
    final accountId = await _accountService.getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Account Id Not Found in Storage');
    }
    final accessToken = await _provideAccessToken();
    final headers = buildHeaders(accessToken);

    String url =
        "https://adsense.googleapis.com/v2/accounts/$accountId/payments";

    try {
      final response = await _httpClient.get(
        Uri.parse(url),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
        final paymentsList = jsonResponse['payments'] as List<dynamic>? ?? [];
        final payments = paymentsList
            .map((paymentData) =>
                PaymentsDto.fromResponse(paymentData as Map<String, dynamic>)
                    .toDomain())
            .toList();

        return payments;
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
