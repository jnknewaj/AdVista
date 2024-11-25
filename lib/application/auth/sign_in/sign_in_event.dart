part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  /// Actually this event handling three tasks:
  ///
  /// 1. sign in
  ///
  /// 2. stores auth token if sign in successful
  ///
  /// 3. signs out if storing goes failed.
  const factory SignInEvent.started() = _Started;
}
