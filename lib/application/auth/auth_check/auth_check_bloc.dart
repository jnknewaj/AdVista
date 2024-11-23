import 'dart:async';

import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';

part 'auth_check_bloc.freezed.dart';
part 'auth_check_event.dart';
part 'auth_check_state.dart';

@injectable
class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final IAuthFacade _authFacade;

  AuthCheckBloc(
    this._authFacade,
  ) : super(const AuthCheckState.initial()) {
    on<AuthCheckEvent>(_onEvent);
  }

  Future<void> _onEvent(
    AuthCheckEvent event,
    Emitter<AuthCheckState> emit,
  ) async {
    await event.map(
      started: (e) async {
        final isSignedIn = await _authFacade.isSignedIn();
        emit(isSignedIn
            ? const AuthCheckState.authenticated()
            : const AuthCheckState.unAuthenticated());
      },
      signOutPressed: (e) async {
        await _authFacade.signOut();
        emit(const AuthCheckState.unAuthenticated());
      },
    );
  }
}
