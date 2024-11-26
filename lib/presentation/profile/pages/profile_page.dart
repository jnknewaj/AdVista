import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/auth/login_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCheckBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AdmobAccountBloc>()
            ..add(const AdmobAccountEvent.accountInfoRequested()),
        )
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
        title: const Text('Account Information'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context
                  .read<AuthCheckBloc>()
                  .add(const AuthCheckEvent.signOutPressed());
            },
          ),
        ],
      ),
      body: BlocBuilder<AdmobAccountBloc, AdmobAccountState>(
        builder: (context, state) {
          return ListView(
            children: [
              state.maybeMap(
                loaded: (s) {
                  final account = s.account;
                  return Text('Publisher : ${account.name}');
                },
                failed: (s) {
                  return Text(
                      'Failed to load account info : ${s.failures.toString()}');
                },
                orElse: () => const SizedBox(),
              ),
            ],
          );
        },
      ),
    );
  }
}
