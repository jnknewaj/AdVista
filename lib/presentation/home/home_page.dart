import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/auth/login_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCheckBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCheckBloc, AuthCheckState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) => navigateAndRemoveUntil(
                  context,
                  const LoginPage(),
                ),
                orElse: () {},
              );
            },
          ),
        ],
        child: const _Handler(),
      ),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            context
                .read<AuthCheckBloc>()
                .add(const AuthCheckEvent.signOutPressed());
          },
        ),
      ),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}
