enum HiveBoxNames {
  completedActivities('completed_activities'),
  ongoingActivities('ongoing_activities'),
  activities('activities'),
  settings('settings'),
  ;

  const HiveBoxNames(this.name);

  final String name;
}

enum HiveKeys {
  completedActivitiesKey('COMPLETED_ACTIVITIES_KEY'),
  ongoingActivitiesKey('ONGOING_ACTIVITIES_KEY'),
  activitiesKey('ACTIVITIES_KEY'),
  ;

  const HiveKeys(this.key);

  final String key;
}
