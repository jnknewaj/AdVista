import 'dart:io';

import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:advista/infrastructure/core/token_storage_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITokenRepository)
class TokenRepository implements ITokenRepository {
  final TokenStorageService _tokenStorageService;

  TokenRepository(this._tokenStorageService);

  @override
  Future<Either<TokenFailures, String>> getValidAccessToken() async {
    try {
      final accessToken = await _tokenStorageService.fetchValidAccessToken();
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
      await _tokenStorageService.storeAuthTokens(tokens);
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
      await _tokenStorageService.clearTokens();
      return right(unit);
    } catch (e) {
      return left(TokenFailures.unknown(msg: e.toString()));
    }
  }
}
