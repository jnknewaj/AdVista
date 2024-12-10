import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/core/widgets/native_ad_widget.dart';
import 'package:advista/presentation/profile/widgets/profile_info_card.dart';
import 'package:advista/presentation/profile/widgets/total_earning_card.dart';
import 'package:advista/utils/app_strings.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoProfilePage extends StatelessWidget {
  const DemoProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<NativeAdBloc>()..add(const NativeAdEvent.started()),
        )
      ],
      child: const _Handler(),
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
          icon: const Icon(Icons.info_outlined),
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
              navigateAndRemoveUntil(context, const AuthGate());
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            const ProfileInfoCard(
              name: 'Brock Lesnar',
              reportingTimeZone: 'California, USA',
              currencyCode: 'USD',
              accountOpeningDate: '31 October, 2021',
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
}
