import 'package:advista/application/adsense/payments_info/payments_info_bloc.dart';
import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/application/auth/auth_check/auth_check_bloc.dart';
import 'package:advista/application/core/account/ac_opening_date_bloc/ac_opening_date_bloc.dart';
import 'package:advista/application/core/account/admob_account_bloc/admob_account_bloc.dart';
import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
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
        ),
        BlocProvider(
          create: (context) =>
              getIt<NativeAdBloc>()..add(const NativeAdEvent.started()),
        ),
        BlocProvider(
          create: (context) => getIt<PaymentsInfoBloc>(),
        ),
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
              children: [
                const Text('Developer : newazkabirtaluk@gmail.com'),
                const SizedBox(height: 10),
                const Text(
                    'The app is still in beta version. Stay updated whenever available.'),
              ],
            );
          },
        ),
        title: Text(appName()),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _showAnimatedDialog(context);
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
            BlocBuilder<NativeAdBloc, NativeAdState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) => NativeAdWidget(
                    nativeAd: s.nativeAd,
                    size: NativeAdSize.large,
                  ),
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showAnimatedDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder: (ctx, animation, secondaryAnimation) {
        final slideAnimation = Tween<Offset>(
          begin: const Offset(0, 1), // Start off-screen at the bottom
          end: Offset.zero, // End position (centered on screen)
        ).animate(animation);

        return BlocProvider.value(
          value: BlocProvider.of<AuthCheckBloc>(context),
          child: SlideTransition(
            position: slideAnimation, // Slide transition
            child: Center(
              // Dialog in the center
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7, // Reduced width
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.zero,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          //color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'This will sign you out.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 16,
                                //fontWeight: FontWeight.w500,
                                //color: Colors.blue,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<AuthCheckBloc>()
                                  .add(const AuthCheckEvent.signOutPressed());
                            },
                            child: Text(
                              'Ok',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54, // Dim background
      transitionDuration: const Duration(
        milliseconds: 700,
      ), // Smooth slide duration
    );
  }
}
