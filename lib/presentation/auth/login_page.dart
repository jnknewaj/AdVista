import 'package:advista/application/auth/sign_in/sign_in_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/core/widgets/google_sign_in_button.dart';
import 'package:advista/presentation/core/widgets/simple_button.dart';
import 'package:advista/presentation/demo/pages/demo_home_page.dart';
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
                failedToStoreToken: (_) => 'Failed To Store Auth Tokens',
                platformFailure: (e) => e.msg,
              );
              showSnackbar(context, text);
            },
            failedToStoreTokens: (s) {});
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
                          color: Colors.blue[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Theme.of(context).primaryColor,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'View your AdSense data.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue[700],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Theme.of(context).primaryColor,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'See your AdMob data.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    // SignIn Button
                    GoogleSignInButton(
                      onPressed: () {
                        context
                            .read<SignInBloc>()
                            .add(const SignInEvent.started());
                      },
                    ),
                    const SizedBox(height: 20),

                    SimpleButton(
                      onPressed: () {
                        navigateAndRemoveUntil(context, const DemoHomePage());
                      },
                      text: 'See Demo',
                      fill: true,
                      primaryColor: Theme.of(context).primaryColor,
                      secondaryColor: Colors.white,
                    ),

                    const SizedBox(height: 20),

                    Text(
                      'Powered by Toreador',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blue[500],
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
