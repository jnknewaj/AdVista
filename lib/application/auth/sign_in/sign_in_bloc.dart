import 'package:advista/domain/auth/auth_failures.dart';
import 'package:advista/domain/auth/auth_tokens.dart';
import 'package:advista/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(const SignInState.initial()) {
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
        // result.fold(
        //   (f) => emit(SignInState.failed(f)),
        //   (accessToken) => emit(SignInState.signInSuccess(accessToken)),
        // );
        await result.fold(
          (failure) async => emit(SignInState.failed(failure)),
          (authTokens) async => emit(SignInState.signInSuccess(authTokens)),
        );
      },
    );
  }
}
