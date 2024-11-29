// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/infrastructure/core/exceptions.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:advista/infrastructure/auth/auth_tokens_dto.dart';
import 'package:advista/infrastructure/auth/token_api_client.dart';
import 'package:advista/utils/string_consts.dart';

//**
// Dependents:
// - [AccountService]
// */
@LazySingleton()
class TokenStorageService {
  final FlutterSecureStorage _storage;
  final TokenApiClient _tokenApiClient;

  TokenStorageService(this._storage, this._tokenApiClient);

  /// Returns access token from storage
  ///
  /// If expired, it gets a new token and stores immediately
  ///
  /// Throws:
  /// - [TokenNotFoundException]: If any if the tokens or their expiry time not found in storage
  /// - [ServerException]: When http response code is other than 200 (thrown from lower level)
  ///
  /// **Doesn't handle other potential exceptions rather propagates.**
  Future<String> fetchValidAccessToken() async {
    final accessToken = await _storage.read(key: KEY_ACCESS_TOKEN);
    cprint('SKT at', accessToken);
    final expiryTimeString = await _storage.read(key: KEY_EXPIRY_TIME);
    cprint('SKT time', expiryTimeString);
    final refreshToken = await _storage.read(key: KEY_REFRESH_TOKEN);
    cprint('SKT rt', refreshToken);

    if (accessToken == null ||
        expiryTimeString == null ||
        refreshToken == null ||
        refreshToken.isEmpty) {
      throw TokenNotFoundException('Any of the tokens or expiry time missing');
    }

    final expiryTime = DateTime.parse(expiryTimeString);

    if (DateTime.now().isAfter(expiryTime)) {
      final apiResponse =
          await _tokenApiClient.refreshAccessToken(refreshToken);
      final authTokens = AuthTokensDto.fromMap(apiResponse).toDomain();
      await storeAuthTokens(authTokens);
      return authTokens.accessToken;
    }
    return accessToken;
  }

  /// Stores given tokens
  ///
  /// Throws [PlatformException] in case of error.
  Future<void> storeAuthTokens(AuthTokens tokens) async {
    try {
      await _storage.write(key: KEY_ACCESS_TOKEN, value: tokens.accessToken);
      await _storage.write(key: KEY_REFRESH_TOKEN, value: tokens.refreshToken);
      await _storage.write(
        key: KEY_EXPIRY_TIME,
        value: tokens.expiryTime.toIso8601String(),
      );
      return;
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code);
    }
  }

  Future<void> logStorageContents() async {
    final accessToken = await _storage.read(key: KEY_ACCESS_TOKEN);
    final refreshToken = await _storage.read(key: KEY_REFRESH_TOKEN);
    final expiryTime = await _storage.read(key: KEY_EXPIRY_TIME);
    cprint('STORAGE', 'Current Tokens in Storage:');
    cprint('STORAGE', 'Access Token: $accessToken');
    cprint('STORAGE', 'Refresh Token: $refreshToken');
    cprint('STORAGE', 'Expiry Time: $expiryTime');
  }

  /// Clears access token. refresh token and expiry time from storage.
  /// Doesnt handle exception.
  Future<void> clearTokens() async {
    await _storage.delete(key: KEY_ACCESS_TOKEN);
    await _storage.delete(key: KEY_REFRESH_TOKEN);
    await _storage.delete(key: KEY_EXPIRY_TIME);

    await logStorageContents();
    return;
  }
}
