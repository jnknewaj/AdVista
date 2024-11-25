import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<bool> isSignedIn();
  Future<void> signOut();

  /// returns accessToken
  Future<Either<AuthFailure, AuthTokens>> signIn();
}
