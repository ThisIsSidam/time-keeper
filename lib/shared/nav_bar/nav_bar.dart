import 'package:activity_tracker/feature/completed_activities/presentation/screens/completed_activities_screen.dart';
import 'package:activity_tracker/feature/home_screen/presentation/screens/home_screen.dart';
import 'package:activity_tracker/feature/settings/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NavigationLayer extends StatelessWidget {
  const NavigationLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = <Widget>[
      const HomeScreen(),
      const CompletedActivitiesScreen(),
      const SettingsScreen(),
    ];

    return PersistentTabView(
      context,
      screens: screens,
      padding: const EdgeInsets.all(8),
      navBarStyle: NavBarStyle.style12,
      items: [
        PersistentBottomNavBarItem(icon: const Icon(Icons.home), title: 'Home'),
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.list), title: 'Activities'),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.settings),
          title: 'Settings',
        ),
      ],
    );
  }
}
