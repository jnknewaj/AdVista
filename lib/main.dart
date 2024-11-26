import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/auth/login_page.dart';
import 'package:advista/presentation/core/splash_screen.dart';
import 'package:advista/presentation/home/home_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdmobAccountBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AdmobAccountBloc, AdmobAccountState>(
            listener: (context, state) {
              print('We are in---------------------------');
              print(state.toString());
              state.map(
                initial: (s) {},
                loading: (s) {
                  showSnackbar(context, 'Please wait...');
                },
                loaded: (s) {
                  navigateAndRemoveUntil(context, const HomePage());
                },
                failed: (s) {
                  showSnackbar(context, 'Failed To Get Admob Account Info');
                },
                idInfoFound: (s) {
                  navigateAndRemoveUntil(context, const HomePage());
                },
                idInfoNotFound: (s) {
                  context
                      .read<AdmobAccountBloc>()
                      .add(const AdmobAccountEvent.accountInfoRequested());
                },
              );
            },
          ),
          BlocListener<AuthCheckBloc, AuthCheckState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated: (e) {
                  context
                      .read<AdmobAccountBloc>()
                      .add(const AdmobAccountEvent.checkedAccountId());
                },
                unAuthenticated: (_) {
                  navigateAndRemoveUntil(context, const LoginPage());
                },
              );
            },
          ),
        ],
        child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SplashScreen(),
              authenticated: (_) => Container(
                child: Center(
                  child: Text('Authenticated'),
                ),
              ),
              unAuthenticated: (_) => Container(
                child: Center(
                  child: Text('Not Authenticated'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
