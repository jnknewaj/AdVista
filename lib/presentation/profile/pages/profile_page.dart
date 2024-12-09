import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/core/account/ac_opening_date_bloc/ac_opening_date_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/auth/login_page.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/metrics/country/widgets/no_data_widget.dart';
import 'package:advista/presentation/profile/widgets/profile_info_card.dart';
import 'package:advista/presentation/profile/widgets/profile_info_card_shimmer.dart';
import 'package:advista/presentation/profile/widgets/total_earning_card.dart';
import 'package:advista/utils/app_strings.dart';
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
        ),
        BlocProvider(
          create: (context) => getIt<AcOpeningDateBloc>()
            ..add(const AcOpeningDateEvent.started()),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCheckBloc, AuthCheckState>(
            listener: (context, state) {
              state.maybeMap(
                unAuthenticated: (_) => navigateAndRemoveUntil(
                  context,
                  const AuthGate(),
                ),
                orElse: () {},
              );
            },
          ),
          BlocListener<AdmobAccountBloc, AdmobAccountState>(
            listener: (context, state) {
              state.maybeMap(
                failed: (f) {
                  final text = f.failures.map(
                    networkFailure: (e) => e.msg,
                    timeOut: (e) => e.msg,
                    parsingFailure: (e) => e.msg,
                    tokenNotFound: (e) => e.msg,
                    serverFailure: (e) =>
                        'Server error code : ${e.code}, ${e.msg}',
                    httpFailure: (e) =>
                        'HTTP error code : ${e.code}, ${e.message}',
                    unknown: (e) => e.message,
                    idNotFound: (e) => e.msg,
                  );
                  showSnackbar(context, text);
                },
                orElse: () {},
              );
            },
          ),
          BlocListener<AcOpeningDateBloc, AcOpeningDateState>(
            listener: (context, state) {
              state.maybeMap(
                failed: (s) {
                  final text = s.failure.map(
                    networkFailure: (e) => e.msg,
                    timeOut: (e) => e.msg,
                    parsingFailure: (e) => e.msg,
                    tokenNotFound: (e) => e.msg,
                    serverFailure: (e) =>
                        'Server error code : ${e.code}, ${e.msg}',
                    httpFailure: (e) =>
                        'HTTP error code : ${e.code}, ${e.message}',
                    unknown: (e) => e.message,
                    idNotFound: (e) => e.msg,
                  );
                  showSnackbar(context, text);
                },
                orElse: () {},
              );
            },
          )
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
          icon: const Icon(
            Icons.info_outlined,
          ),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: const AppIcon(
                height: 80,
                width: 80,
              ),
              applicationName: AppStrings.appName,
              applicationVersion: AppStrings.appVersion,
              children: [const Text('Developer : newazkabirtaluk@gmail.com')],
            );
          },
        ),
        title: Text(appName()),
        centerTitle: true,
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            BlocBuilder<AdmobAccountBloc, AdmobAccountState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) {
                    final account = s.account;
                    return BlocBuilder<AcOpeningDateBloc, AcOpeningDateState>(
                      builder: (context, state2) {
                        return ProfileInfoCard(
                          name: account.name,
                          reportingTimeZone: account.reportingTimeZone,
                          currencyCode: account.currencyCode,
                          accountOpeningDate: state2.maybeMap(
                            loaded: (s2) => s2.date,
                            failed: (e) =>
                                'Failed to load account opening date : ${e.failure.toString()}',
                            orElse: () => '',
                          ),
                        );
                      },
                    );
                  },
                  failed: (s) {
                    return const BillBoard(
                      // TODO create a map
                      text: 'Failed To Load Account Info',
                    );
                  },
                  initial: (_) => const ProfileInfoCardShimmer(),
                  loading: (_) => const ProfileInfoCardShimmer(),
                  orElse: () => const SizedBox(),
                );
              },
            ),
            const TotalEarningCard(),
          ],
        ),
      ),
    );
  }

  void _showLogoutConfirmationDialog(BuildContext context) {
    final authCheckBloc = context.read<AuthCheckBloc>();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return BlocProvider.value(
          value: authCheckBloc,
          child: AlertDialog(
            title: const Text('Confirm Logout'),
            content: const Text('Are you sure you want to log out?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Close the dialog
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Close the dialog
                  dialogContext.read<AuthCheckBloc>().add(
                        const AuthCheckEvent.signOutPressed(),
                      );
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        );
      },
    );
  }
}
