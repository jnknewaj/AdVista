import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:advista/utils/helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class GoogleAuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;

  GoogleAuthFacade(this._googleSignIn);

  @override
  Future<Either<AuthFailure, String>> getAccessToken() async {
    try {
      final account = await _googleSignIn.signInSilently(suppressErrors: false);
      if (account != null) {
        final googleSignInAuthentication = await account.authentication;
        final token = googleSignInAuthentication.accessToken;
        return token == null
            ? left(const AuthFailure.noAccessToken())
            : right(token);
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } catch (e, stackTrace) {
      return left(_handleAuthException(e, stackTrace));
    }
  }

  @override
  Future<bool> isSignedIn() async {
    final isSignedIn = await _googleSignIn.isSignedIn();
    return isSignedIn;
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }

  @override
  Future<Either<AuthFailure, String>> signIn() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account != null) {
        final googleSignInAuthentication = await account.authentication;
        final token = googleSignInAuthentication.accessToken;
        return token == null
            ? left(const AuthFailure.noAccessToken())
            : right(token);
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } catch (e, stackTrace) {
      return left(_handleAuthException(e, stackTrace));
    }
  }

  AuthFailure _handleAuthException(Object e, StackTrace stackTrace) {
    if (e is PlatformException) {
      switch (e.code) {
        case 'kSignInRequiredError':
          return const AuthFailure.notSignedIn();
        case 'kNetworkError':
          return const AuthFailure.networkError();
        case 'kSignInFailedError':
          return AuthFailure.unknown(
              code: e.code,
              msg:
                  'Unknown error occurred during sign-in, class [GoogleAuthFacade]');
        default:
          print(
              'Code : ${e.code}  |||  msg : ${e.message} ||| ${e.toString()}');
          return AuthFailure.unknown(
              msg:
                  'Unknown [default] error. [GoogleAuthFacade -> ${getCurrentFunctionName(stackTrace)}]');
      }
    } else {
      return AuthFailure.serverError(
          msg: 'Server error. Type : ${e.runtimeType}  --> ${e.toString()}');
    }
  }

  Future<Either<AuthFailure, String>> refreshAccessToken() async {
    try {
      final account = await _googleSignIn.signInSilently(suppressErrors: false);
      if (account != null) {
        final googleSignInAuthentication = await account.authentication;
        final refreshedToken = googleSignInAuthentication.accessToken;
        return refreshedToken == null
            ? left(const AuthFailure.noAccessToken())
            : right(refreshedToken);
      }
      return left(const AuthFailure.cancelledByUser());
    } catch (e) {
      return left(
          AuthFailure.unknown(msg: 'Error refreshing access token: $e'));
    }
  }
}
