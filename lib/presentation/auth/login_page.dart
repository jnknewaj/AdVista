import 'package:advista/application/auth/sign_in/sign_in_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/core/widgets/google_sign_in_button.dart';
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
              // Storing tokens done in bloc itself for simplicity
              navigateAndRemoveUntil(context, const AuthGate());
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
            backgroundColor: Colors.blue[50],
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // App Logo
                    const AppIcon(height: 120, width: 120),
                    const SizedBox(height: 30),

                    // Title Text
                    Text(
                      'Welcome to AdVista',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:
                            Colors.blue[800], // Darker blue for better contrast
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),

                    // Information Text
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'This app acts as a dashboard for your AdMob account, allowing you to check your AdMob data at ease.\n\nPlease allow the requested permissions.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[600], // Slightly lighter text
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // SignIn Button
                    GoogleSignInButton(
                      onPressed: () {
                        context
                            .read<SignInBloc>()
                            .add(const SignInEvent.started());
                      },
                    ),
                    const SizedBox(height: 20),

                    Text(
                      'Powered by Toreador',
                      style: TextStyle(
                        fontSize: 12,
                        color:
                            Colors.blue[500], // Lighter color for footer text
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
