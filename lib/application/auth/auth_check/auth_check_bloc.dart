import 'dart:async';

import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/core/i_account_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';

part 'auth_check_bloc.freezed.dart';
part 'auth_check_event.dart';
part 'auth_check_state.dart';

@injectable
class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  /// [GoogleAuthFacade]
  final IAuthFacade _authFacade;
  final ITokenRepository _tokenRepository;
  final IAccountRepository _admobAccountRepository;

  AuthCheckBloc(
    this._authFacade,
    this._admobAccountRepository,
    this._tokenRepository,
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
        await _tokenRepository.clearTokens();
        await _admobAccountRepository.removeAccountId();
        await _authFacade.signOut();
        emit(const AuthCheckState.unAuthenticated());
      },
    );
  }
}
