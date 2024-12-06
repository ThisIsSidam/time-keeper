import 'package:activity_tracker/core/exceptions/activity_already_running_exception.dart';
import 'package:activity_tracker/feature/completed_activities/presentation/providers/completed_activities_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../database/ongoing_activities_db.dart';
import '../../../../utils/id_generator.dart';
import '../../data/models/activity_model/activity_model.dart';
import '../../data/models/ongoing_activity_model/ongoing_activity_model.dart';

part 'ongoing_activities_notifier.g.dart';

@riverpod
class OngoingActivitiesRepository extends _$OngoingActivitiesRepository {
  @override
  List<OngoingActivityModel> build() {
    return OngoingActivitiesDB.getWidgets() ?? [];
  }

  void startActivity(ActivityModel activity) {
    final bool exists = state.any((e) => e.activity == activity);
    if (exists) {
      throw ActivityAlreadyRunningException('Activity already running');
    }

    final DateTime now = DateTime.now();
    final onActivity = OngoingActivityModel(
      id: 'OA${generateId(activity.name, dateTime: now)}',
      activity: activity,
      startedAt: now,
    );
    OngoingActivitiesDB.addWidget(onActivity);
    state = OngoingActivitiesDB.getWidgets() ?? [];
  }

  void endActivity(OngoingActivityModel onActivity) {
    ref
        .read(completedActivitiesRepositoryProvider.notifier)
        .addActivity(onActivity);

    OngoingActivitiesDB.removeWidget(onActivity.startedAt);
    state = OngoingActivitiesDB.getWidgets() ?? [];
  }

  void updateActivities(List<OngoingActivityModel> activities) {
    OngoingActivitiesDB.updateWidgets(activities);
    state = OngoingActivitiesDB.getWidgets() ?? [];
  }
}
