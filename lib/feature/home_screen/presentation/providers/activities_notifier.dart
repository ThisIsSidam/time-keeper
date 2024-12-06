import 'package:activity_tracker/utils/id_generator.dart';
import 'package:activity_tracker/utils/logger/global_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../database/activities_db.dart';
import '../../data/models/activity_model/activity_model.dart';

part 'activities_notifier.g.dart';

@riverpod
class ActivitiesRepository extends _$ActivitiesRepository {
  @override
  List<ActivityModel> build() {
    return ActivitiesDB.getWidgets() ?? [];
  }

  void createActivity(String name, String? note) {
    final ActivityModel activity = ActivityModel(
      name: name,
      note: note,
      id: 'AC${generateId(name)}',
    );

    gLogger.i('Activity created: ${activity.name}, ${activity.note}');

    ActivitiesDB.addWidget(activity);
    state = ActivitiesDB.getWidgets() ?? [];
  }

  void removeActivity(String name) {
    ActivitiesDB.removeWidget(name);
    state = ActivitiesDB.getWidgets() ?? [];
  }

  void updateActivities(List<ActivityModel> activities) {
    ActivitiesDB.updateWidgets(activities);
    state = ActivitiesDB.getWidgets() ?? [];
  }
}
