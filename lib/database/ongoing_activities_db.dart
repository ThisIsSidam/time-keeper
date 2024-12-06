import 'package:hive_flutter/hive_flutter.dart';

import '../core/enums/hive_enums.dart';
import '../feature/home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';

class OngoingActivitiesDB {
  static final _box = Hive.box<List>(HiveBoxNames.ongoingActivities.name);

  static List<OngoingActivityModel>? getWidgets() {
    final List? data = _box.get(HiveKeys.ongoingActivitiesKey.key);
    return data?.cast<OngoingActivityModel>() ?? [];
  }

  static void addWidget(OngoingActivityModel activity) {
    final List<OngoingActivityModel>? widgets = getWidgets();
    if (widgets == null) {
      _box.put(HiveKeys.ongoingActivitiesKey.key, [activity]);
      return;
    }
    widgets.add(activity);
    _box.put(HiveKeys.ongoingActivitiesKey.key, widgets);
  }

  static void removeWidget(DateTime startTime) {
    final List<OngoingActivityModel>? widgets = getWidgets();
    if (widgets == null) return;
    widgets.removeWhere((e) => e.startedAt == startTime);
    _box.put(HiveKeys.ongoingActivitiesKey.key, widgets);
  }

  static void updateWidgets(List<OngoingActivityModel> widgets) {
    _box.put(HiveKeys.ongoingActivitiesKey.key, widgets);
  }
}
