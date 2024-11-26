// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advista/domain/core/admob_account.dart';
import 'package:advista/infrastructure/core/admob_account_dto.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import 'package:advista/infrastructure/core/base_service.dart';
import 'package:advista/infrastructure/core/token_storage_service.dart';

@LazySingleton()
class AccountService {
  final FlutterSecureStorage _secureStorage;
  final BaseService _baseService;
  final TokenStorageService _tokenStorageService;

  AccountService(
    this._secureStorage,
    this._baseService,
    this._tokenStorageService,
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

  /// Throws [HttpException] and [ServiceException]
  ///
  /// This has one flaw. User might have multiple admob accounts under one email.
  /// We are just dealing with the first account.
  Future<AdmobAccount> fetchAccountInfo() async {
    final accessToken = await _tokenStorageService.fetchValidAccessToken();
    const url = 'https://admob.googleapis.com/v1/accounts';
    final headers = {
      'Authorization': 'Bearer $accessToken',
      'Content-Type': 'application/json',
    };

    try {
      final response = await _baseService.get(
        url: url,
        headers: headers,
      );

      final accounts = (response['account'] as List)
          .map((json) => AdmobAccountDto.fromJson(json).toDomain())
          .toList();

      return accounts[0];
    } on HttpException catch (e) {
      // Handle specific HTTP errors
      throw ServiceException('Failed to fetch account info: $e');
    } catch (e) {
      // Handle general errors
      throw ServiceException('Unexpected error: $e');
    }
  }
}
