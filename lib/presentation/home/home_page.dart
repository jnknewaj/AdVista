import 'package:advista/application/advertising_bloc/advertising_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/metrics/apps_data/apps_list_page.dart';
import 'package:advista/presentation/metrics/pages/metrics_page.dart';
import 'package:advista/presentation/profile/pages/profile_page.dart';
import 'package:advista/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AdvertisingBloc>()
        ..add(const AdvertisingEvent.bannerRequested()),
      child: const _Handler(),
    );
  }
}

class _Handler extends HookWidget {
  const _Handler({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    return BlocListener<AdvertisingBloc, AdvertisingState>(
      listener: (context, state) {
        state.map(
          initial: (e) {
            cprint('SLM MAL', e.toString());
          },
          loading: (e) {
            cprint('SLM MAL', e.toString());
          },
          loaded: (e) {
            cprint('SLM MAL', e.toString());
          },
          failure: (e) {
            cprint('SLM MAL', e.toString());
          },
        );
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GNav(
                gap: 4,
                activeColor: Theme.of(context).primaryColor,
                iconSize: 22,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
                duration: const Duration(milliseconds: 400),
                tabs: const [
                  GButton(
                    icon: Icons.dashboard,
                    text: 'Dashboard',
                  ),
                  GButton(
                    icon: Icons.apps_sharp,
                    text: 'Apps',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: currentTab.value,
                onTabChange: (int index) {
                  currentTab.value = index;
                },
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: currentTab.value,
                children: const <Widget>[
                  MetricsPage(),
                  AppsListPage(),
                  ProfilePage(),
                ],
              ),
            ),
            BlocBuilder<AdvertisingBloc, AdvertisingState>(
              builder: (context, state) {
                return state.maybeMap(
                  loaded: (s) {
                    return BannerAdWidget(bannerAd: s.bannerAd);
                  },
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
