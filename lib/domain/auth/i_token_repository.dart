import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ITokenRepository {
  Future<Either<TokenFailures, Unit>> storeAuthTokens(AuthTokens tokens);
  Future<Either<TokenFailures, String>> getValidAccessToken();
  Future<Either<TokenFailures, Unit>> clearTokens();
}
