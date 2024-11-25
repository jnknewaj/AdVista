import 'dart:io';

import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/auth/auth_tokens_dto.dart';
import 'package:advista/infrastructure/auth/token_api_client.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITokenRepository)
class TokenRepository implements ITokenRepository {
  final FlutterSecureStorage _storage;
  final TokenApiClient _apiClient;

  TokenRepository(this._storage, this._apiClient);

  @override
  Future<Either<TokenFailures, String>> getValidAccessToken() async {
    try {
      final accessToken = await _storage.read(key: KEY_ACCESS_TOKEN);
      final expiryTimeString = await _storage.read(key: KEY_EXPIRY_TIME);
      final refreshToken = await _storage.read(key: KEY_REFRESH_TOKEN);

      if (accessToken == null ||
          expiryTimeString == null ||
          refreshToken == null) {
        return left(const TokenFailures.notFound());
      }

      final expiryTime = DateTime.parse(expiryTimeString);

      if (DateTime.now().isAfter(expiryTime)) {
        final apiResponse = await _apiClient.refreshAccessToken(refreshToken);
        final authTokens = AuthTokensDto.fromMap(apiResponse).toDomain();
        await storeAuthTokens(authTokens);
        return right(authTokens.accessToken);
      }
      return right(accessToken);
    } on HttpException catch (e) {
      return left(TokenFailures.serverError(msg: e.message));
    } catch (e) {
      return left(TokenFailures.unknown(msg: e.toString()));
    }
  }

  @override
  Future<Either<TokenFailures, Unit>> storeAuthTokens(AuthTokens tokens) async {
    try {
      await _storage.write(key: KEY_ACCESS_TOKEN, value: tokens.accessToken);
      await _storage.write(key: KEY_REFRESH_TOKEN, value: tokens.refreshToken);
      await _storage.write(
        key: KEY_EXPIRY_TIME,
        value: tokens.expiryTime.toIso8601String(),
      );
      return right(unit);
    } on PlatformException catch (e) {
      return left(TokenFailures.unknown(
          code: e.code, msg: 'PlatformException: ${e.message}'));
    } catch (e) {
      return left(TokenFailures.unknown(msg: 'Unexpected error: $e'));
    }
  }

  @override
  Future<Either<TokenFailures, Unit>> clearTokens() async {
    try {
      await _storage.delete(key: KEY_ACCESS_TOKEN);
      await _storage.delete(key: KEY_REFRESH_TOKEN);
      await _storage.delete(key: KEY_EXPIRY_TIME);
      return right(unit);
    } catch (e) {
      return left(TokenFailures.unknown(msg: e.toString()));
    }
  }
}
