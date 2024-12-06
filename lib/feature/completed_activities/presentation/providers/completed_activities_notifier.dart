import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../database/completed_activities_db.dart';
import '../../../home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';
import '../../data/models/completed_activity_model/completed_activity_model.dart';

part 'completed_activities_notifier.g.dart';

@riverpod
class CompletedActivitiesRepository extends _$CompletedActivitiesRepository {
  @override
  List<CompletedActivityModel> build() {
    return CompletedActivitiesDB.getWidgets() ?? [];
  }

  void addActivity(OngoingActivityModel onActivity) {
    final ocActivity = CompletedActivityModel.fromOngoing(
      ongoing: onActivity,
      endedAt: DateTime.now(),
    );
    CompletedActivitiesDB.addWidget(ocActivity);
    state = CompletedActivitiesDB.getWidgets() ?? [];
  }

  void removeActivity(DateTime startedAt) {
    CompletedActivitiesDB.removeWidget(startedAt);
    state = CompletedActivitiesDB.getWidgets() ?? [];
  }

  void updateActivities(List<CompletedActivityModel> activities) {
    CompletedActivitiesDB.updateWidgets(activities);
    state = CompletedActivitiesDB.getWidgets() ?? [];
  }
}
