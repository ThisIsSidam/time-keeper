import 'package:activity_tracker/feature/home_screen/presentation/widgets/sections/ongoing_activities_section.dart';
import 'package:flutter/material.dart';

import '../widgets/sections/activity_options_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongoing Activity'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: <Widget>[
            OngoingActivitiesSection(),
            SizedBox(height: 8),
            ActivityOptionsSection(),
          ],
        ),
      ),
    );
  }
}
