import 'package:advista/application/advertising/advertising_bloc/advertising_bloc.dart';
import 'package:advista/injection.dart';
import 'package:advista/presentation/core/widgets/banner_ad_widget.dart';
import 'package:advista/presentation/demo/pages/demo_apps_list_page.dart';
import 'package:advista/presentation/demo/pages/demo_metrics_page.dart';
import 'package:advista/presentation/demo/pages/demo_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DemoHomePage extends StatelessWidget {
  const DemoHomePage({super.key});

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
    return Scaffold(
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
              children: <Widget>[
                const DemoMetricsPage(),
                const DemoAppsListPage(),
                DemoProfilePage(),
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
    );
  }
}
