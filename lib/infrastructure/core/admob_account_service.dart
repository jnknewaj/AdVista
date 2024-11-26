// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:advista/infrastructure/core/base_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AccountService {
  final FlutterSecureStorage _secureStorage;
  final BaseService _baseService;

  static const _accountIdKey = 'account_id';

  AccountService(this._secureStorage, this._baseService);

  Future<void> storeAccountId(String accountId) async {
    await _secureStorage.write(key: _accountIdKey, value: accountId);
  }

  Future<String?> getAccountId() async {
    return await _secureStorage.read(key: _accountIdKey);
  }

  Future<bool> isAccountIdStored() async {
    final accountId = await getAccountId();
    return accountId != null;
  }

  Future<Map<String, dynamic>> fetchAccountInfo(String accessToken) async {
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
      return response;
    } on HttpException catch (e) {
      // Handle specific HTTP errors
      throw ServiceException('Failed to fetch account info: $e');
    } catch (e) {
      // Handle general errors
      throw ServiceException('Unexpected error: $e');
    }
  }
}
