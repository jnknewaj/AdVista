import 'package:advista/application/advertising/native_ad/native_ad_bloc.dart';
import 'package:advista/domain/advertising/my_ad_manager.dart';
import 'package:advista/injection.dart';
import 'package:advista/main.dart';
import 'package:advista/presentation/core/widgets/app_icon.dart';
import 'package:advista/presentation/profile/widgets/profile_info_card.dart';
import 'package:advista/utils/app_strings.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoProfilePage extends StatelessWidget {
  // TODO Temp. Must follow BLOC later
  final MyAdManager _adManager = MyAdManager();
  DemoProfilePage({super.key}) {
    //_adManager.loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NativeAdBloc>(),
        )
      ],
      child: _Handler(_adManager),
    );
  }
}

class _Handler extends StatelessWidget {
  final MyAdManager _adManager;
  const _Handler(this._adManager);

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
        title: Text('${appName()} Demo'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              //_adManager.showAd();
              navigateAndRemoveUntil(context, const AuthGate());
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: const [
            ProfileInfoCard(
              name: 'Brock Lesnar',
              reportingTimeZone: 'California, USA',
              currencyCode: 'USD',
              accountOpeningDate: '31 October, 2021',
            ),
            // BlocBuilder<NativeAdBloc, NativeAdState>(
            //   builder: (context, state) {
            //     return state.maybeMap(
            //       loaded: (s) => NativeAdWidget(
            //         nativeAd: s.nativeAd,
            //         size: NativeAdSize.large,
            //       ),
            //       orElse: () => const SizedBox(),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
