part of 'auth_check_bloc.dart';

@freezed
abstract class AuthCheckEvent with _$AuthCheckEvent {
  const factory AuthCheckEvent.started() = _Started;

  /// Additionally it clears tokens and admob id from storage while signing out
  const factory AuthCheckEvent.signOutPressed() = _SignOutPressed;
}
