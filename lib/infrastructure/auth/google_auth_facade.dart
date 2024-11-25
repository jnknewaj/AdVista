import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:advista/infrastructure/auth/auth_tokens_dto.dart';
import 'package:advista/infrastructure/auth/token_api_client.dart';
import 'package:advista/utils/helper.dart';
import 'package:advista/utils/string_consts.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class GoogleAuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;
  final TokenApiClient _apiClient;

  GoogleAuthFacade(this._googleSignIn, this._apiClient);

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
  Future<Either<AuthFailure, AuthTokens>> signIn() async {
    try {
      final account = await signInWithConsent();

      if (account == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final authentication = await account.authentication;

      if (authentication.accessToken == null) {
        await _googleSignIn.signOut();
        return left(const AuthFailure.noAccessToken());
      }

      if (authentication.idToken == null) {
        await _googleSignIn.signOut();
        return left(const AuthFailure.noRefreshToken());
      }

      // Exchange serverAuthCode for tokens (if needed)
      final serverAuthCode = account.serverAuthCode;
      if (serverAuthCode == null) {
        await _googleSignIn.signOut();
        return left(const AuthFailure.noServerAuthCode());
      }

      final tokenResponse =
          await _apiClient.exchangeAuthCodeForTokens(serverAuthCode);

      if (tokenResponse != null) {
        final temp = tokenResponse['refresh_token'];
        print('REFRESHTOKEN : $temp');
        print('TOKENRESPONSE:$tokenResponse');
        final dto = AuthTokensDto.fromMap(tokenResponse);
        return right(dto.toDomain());
      } else {
        await _googleSignIn.signOut();
        return left(const AuthFailure.tokenExchangeFailed());
      }
    } catch (e) {
      print('ERROR: ${e.toString()}');
      await _googleSignIn.signOut();
      return left(AuthFailure.unknown(msg: e.toString()));
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

  Future<GoogleSignInAccount?> signInWithConsent() async {
    // Ensure user logs out to clear cached tokens and enforce reauthorization
    await _googleSignIn.signOut();

    // Initiate the sign-in process
    final account = await _googleSignIn.signIn();

    // Check if the account is null (user canceled sign-in)
    if (account == null) {
      print("User cancelled the sign-in process.");
      return null;
    }

    // Retrieve tokens
    final auth = await account.authentication;

    print("Access Token: ${auth.accessToken}");

    return account;
  }
}
