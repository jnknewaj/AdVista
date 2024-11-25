import 'package:advista/application/auth/sign_in/sign_in_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/home/home_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: const _Handler(),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.map(
            initial: (_) {
              showSnackbar(context, 'Signing In');
            },
            inProgrees: (_) {},
            signInSuccess: (s) {
              final temp = s.tokens;
              print('TOKENS =======  $temp');
              navigateAndRemoveUntil(context, const HomePage());
            },
            failed: (f) {
              final text = f.failure.map(
                  cancelledByUser: (_) => 'Cancelled By User',
                  networkError: (_) => 'Network Error',
                  noAccessToken: (_) => 'No Access Token',
                  notSignedIn: (_) => 'Not Signed In',
                  serverError: (m) => 'Server error : ${m.msg}',
                  unknown: (u) => '${u.code}  || ${u.msg}',
                  noServerAuthCode: (_) => 'No Server Auth Code',
                  tokenExchangeFailed: (_) => 'Token exchange failed',
                  noRefreshToken: (_) => 'No Refresh Token',
                  failedToStoreToken: (_) => 'Failed To Store Auth Tokens');
              showSnackbar(context, text);
            },
            failedToStoreTokens: (s) {
              final msg = s.failure.map(
                notFound: (_) => 'Token Not Found',
                expired: (_) => 'Token Expired',
                serverError: (err) =>
                    'Server Error. Code : ${err.code} Message : ${err.msg}',
                unknown: (e) => 'Unknown error occurred',
              );
            });
      },
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignInBloc>().add(const SignInEvent.started());
                },
                child: const Text('Sign In With Google'),
              ),
            ),
          );
        },
      ),
    );
  }
}
