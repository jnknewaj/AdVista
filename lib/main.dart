import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
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
    return BlocProvider(
      create: (context) =>
          getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
      child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => const SplashScreen(),
              authenticated: (_) {
                ///This ensures that context.go('/home') only runs after the
                ///current widget tree has finished building, preventing potential
                ///issues like trying to navigate while the widget is still being
                ///built.
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  /// can’t use context.go('/home') directly inside the BlocBuilder
                  /// Cz  `BlocBuilder()` is called multiple times durring
                  /// widget's lifecycle
                  navigateAndRemoveUntil(context, const HomePage());
                });
                return Container();
              },
              unAuthenticated: (_) => const LoginPage());
        },
      ),
    );
  }
}
