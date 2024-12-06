import 'package:hive_flutter/hive_flutter.dart';

import '../core/enums/hive_enums.dart';
import '../feature/home_screen/data/models/activity_model/activity_model.dart';

class ActivitiesDB {
  static final _box = Hive.box<List>(HiveBoxNames.activities.name);

  static List<ActivityModel>? getWidgets() {
    final List? data = _box.get(HiveKeys.activitiesKey.key);
    return data?.cast<ActivityModel>() ?? [];
  }

  static void addWidget(ActivityModel activity) {
    final List<ActivityModel>? widgets = getWidgets();
    if (widgets == null) {
      _box.put(HiveKeys.activitiesKey.key, [activity]);
      return;
    }
    widgets.add(activity);
    _box.put(HiveKeys.activitiesKey.key, widgets);
  }

  static void removeWidget(String name) {
    final List<ActivityModel>? widgets = getWidgets();
    if (widgets == null) return;
    widgets.removeWhere((e) => e.name == name);
    _box.put(HiveKeys.activitiesKey.key, widgets);
  }

  static void updateWidgets(List<ActivityModel> widgets) {
    _box.put(HiveKeys.activitiesKey.key, widgets);
  }
}
