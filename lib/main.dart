import 'package:activity_tracker/app.dart';
import 'package:activity_tracker/core/enums/hive_enums.dart';
import 'package:activity_tracker/core/hive_adapters/duration.g.dart';
import 'package:activity_tracker/feature/completed_activities/data/models/completed_activity_model/completed_activity_model.dart';
import 'package:activity_tracker/feature/home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';
import 'package:activity_tracker/utils/logger/global_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'feature/home_screen/data/models/activity_model/activity_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initLogger();

  await Hive.initFlutter();
  Hive.registerAdapter(DurationAdapter());
  Hive.registerAdapter(ActivityModelAdapter());
  Hive.registerAdapter(OngoingActivityModelAdapter());
  Hive.registerAdapter(CompletedActivityModelAdapter());

  await Hive.openBox<List>(HiveBoxNames.activities.name);
  await Hive.openBox<List>(HiveBoxNames.ongoingActivities.name);
  await Hive.openBox<List>(HiveBoxNames.completedActivities.name);

  runApp(const ProviderScope(child: MyApp()));
}
