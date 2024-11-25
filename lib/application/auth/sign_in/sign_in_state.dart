part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.inProgrees() = _InProgrees;
  const factory SignInState.signInSuccess(AuthTokens tokens) = _SignInSuccess;
  const factory SignInState.failed(AuthFailure failure) = _Failed;
}
