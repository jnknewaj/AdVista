import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError({String? msg}) = ServerError;
  const factory AuthFailure.noAccessToken() = NoAccessToken;
  const factory AuthFailure.noRefreshToken() = NoRefreshToken;
  const factory AuthFailure.noServerAuthCode() = NoServerAuthCode;
  const factory AuthFailure.tokenExchangeFailed() = TokenExchangeFailed;
  const factory AuthFailure.notSignedIn() = NotSignedIn;
  const factory AuthFailure.networkError() = NetworkError;
  const factory AuthFailure.unknown({String? code, String? msg}) = Unknown;
}
