import 'package:advista/presentation/metrics/apps_data/apps_data_page.dart';
import 'package:advista/presentation/metrics/pages/metrics_page.dart';
import 'package:advista/presentation/profile/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: const [MetricsPage(), AppsListPage(), ProfilePage()],
      items: _navBarsItems(context),
      backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor ??
              Colors.white,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
    );
  }
}

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor ??
              Colors.white,
      inactiveColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.app),
      title: ("Apps"),
      activeColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor ??
              Colors.white,
      inactiveColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.settings),
      title: ("Profile"),
      activeColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.selectedItemColor ??
              Colors.white,
      inactiveColorPrimary:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
    ),
  ];
}
