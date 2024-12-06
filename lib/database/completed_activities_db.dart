import 'package:activity_tracker/feature/completed_activities/data/models/completed_activity_model/completed_activity_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../core/enums/hive_enums.dart';

class CompletedActivitiesDB {
  static final _box = Hive.box<List>(HiveBoxNames.completedActivities.name);

  static List<CompletedActivityModel>? getWidgets() {
    final List? data = _box.get(HiveKeys.completedActivitiesKey.key);
    return data?.cast<CompletedActivityModel>() ?? [];
  }

  static void addWidget(CompletedActivityModel activity) {
    final List<CompletedActivityModel>? widgets = getWidgets();
    if (widgets == null) {
      _box.put(HiveKeys.completedActivitiesKey.key, [activity]);
      return;
    }
    widgets.add(activity);
    _box.put(HiveKeys.completedActivitiesKey.key, widgets);
  }

  static void removeWidget(DateTime startTime) {
    final List<CompletedActivityModel>? widgets = getWidgets();
    if (widgets == null) return;
    widgets.removeWhere((e) => e.startedAt == startTime);
    _box.put(HiveKeys.completedActivitiesKey.key, widgets);
  }

  static void updateWidgets(List<CompletedActivityModel> widgets) {
    _box.put(HiveKeys.completedActivitiesKey.key, widgets);
  }
}
