import 'package:advista/domain/auth/auth_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<bool> isSignedIn();
  Future<Either<AuthFailure, String>> getAccessToken();
  Future<void> signOut();

  /// returns accessToken
  Future<Either<AuthFailure, String>> signIn();
}
