import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:advista/domain/auth/i_token_repository.dart';
import 'package:advista/domain/auth/token_failures.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  final ITokenRepository _tokenRepository;

  SignInBloc(
    this._authFacade,
    this._tokenRepository,
  ) : super(const SignInState.initial()) {
    on<SignInEvent>(_onEvents);
  }

  Future<void> _onEvents(
    SignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    await event.map(
      started: (e) async {
        emit(const SignInState.inProgrees());
        final result = await _authFacade.signIn();

        await result.fold(
          (failure) async => emit(SignInState.failed(failure)),
          (authTokens) async {
            final result = await _tokenRepository.storeAuthTokens(authTokens);
            return result.fold(
              (f) async {
                await _authFacade.signOut();
                emit(SignInState.failedToStoreTokens(f));
              },
              (_) {
                // successfully stored tokens after signin
                emit(SignInState.signInSuccess(authTokens));
              },
            );
          },
        );
      },
    );
  }
}
