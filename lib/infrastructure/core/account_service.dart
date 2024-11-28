// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:advista/utils/app_utils.dart';
import 'package:http/http.dart' as http;
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/infrastructure/core/admob_account_dto.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/token_storage_service.dart';

/**
 * Dependent :
 *  - [AdmobAccountRepository]
 */
@LazySingleton()
class AccountService {
  final FlutterSecureStorage _secureStorage;
  final BaseService _baseService;
  final TokenStorageService _tokenStorageService;
  // Cant propogate everything on [BaseService], thats why http imported here
  final http.Client _httpClient;

  AccountService(
    this._secureStorage,
    this._baseService,
    this._tokenStorageService,
    this._httpClient,
  );

  /// Stores admob id in storage
  Future<void> storeAccountId(String accountId) async {
    await _secureStorage.write(key: KEY_ADMOB_ID, value: accountId);
  }

  /// Retrieves admob id from storage
  Future<String?> getAccountId() async {
    return await _secureStorage.read(key: KEY_ADMOB_ID);
  }

  Future<bool> isAccountIdStored() async {
    final accountId = await getAccountId();
    print('MYID: $accountId');
    return accountId != null;
  }

  Future<void> clearAccountId() async {
    await _secureStorage.delete(key: KEY_ADMOB_ID);
  }

  /// Throws:
  /// - [TokenNotFoundException]: If any if the tokens or their expiry time not found in storage (thrown from lower level)
  /// - [NetworkException]: If there is no network connectivity or a network-related issue occurs.
  /// - [TimeoutException]: If the request takes longer than 15 seconds to complete.
  /// - [ParsingException]: If the server response cannot be parsed into JSON.
  /// - [ServerException]: If the server returns a non-200 status code.
  /// - [UnknownException]: If an unexpected error occurs.
  ///
  /// **This has one flaw. User might have multiple admob accounts under one email.
  /// We are just dealing with the first account.**
  Future<AdmobAccount> fetchAccountInfo() async {
    try {
      final accessToken = await _tokenStorageService.fetchValidAccessToken();
      cprint('VISTA VAIA', accessToken);
      const url = 'https://admob.googleapis.com/v1/accounts';
      final headers = {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      };
      final response = await _baseService.get(
        url: url,
        headers: headers,
      );

      final accounts = (response['account'] as List)
          .map((json) => AdmobAccountDto.fromJson(json).toDomain())
          .toList();

      return accounts[0];
    } on SocketException catch (e) {
      cprint('VISTA', 'SocketVaia'); // DONE
      throw NetworkException('Check Network - ${e.message}');
    } on TimeoutException catch (e) {
      throw TimeoutException('The request timed out.');
    } on FormatException catch (e) {
      throw ParsingException('Response parsing failed: ${e.message}');
    } on TokenNotFoundException catch (e) {
      cprint('VISTA', 'Caught My Darling');
      throw TokenNotFoundException(
          'Any of the tokens or expiry time missing : ${e.message}');
    } on ServerException catch (e) {
      throw ServerException(message: e.message, code: e.code);
    } catch (e) {
      cprint('VISTA', "HIHI ex : ${e.toString()}");
      throw UnknownException(
          message:
              'Unexpected error occurred in http.post(). Class : [TokenApiClient]. Details: ${e.toString()}');
    }
  }

  Future<DateTime?> fetchAccountOpeningDate() async {
    final accountId = await getAccountId();
    if (accountId == null) {
      throw IdNotFoundException(msg: 'Admob Id Not Found In Storage');
    }

    final accessToken = await _tokenStorageService.fetchValidAccessToken();

    final url =
        'https://admob.googleapis.com/v1/accounts/$accountId/networkReport:generate';

    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    };

    final body = {
      "reportSpec": {
        "dateRange": {
          "startDate": {"year": 2010, "month": 1, "day": 1},
          "endDate": {"year": 2024, "month": 11, "day": 22}
        },
        "dimensions": ["DATE"],
        "metrics": [
          "AD_REQUESTS",
        ],
        "sortConditions": [
          {"dimension": "DATE", "order": "ASCENDING"}
        ],
      }
    };

    final response = await _httpClient.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );
  }
}
