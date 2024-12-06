import 'package:activity_tracker/feature/home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../home_screen/data/models/activity_model/activity_model.dart';

part 'completed_activity_model.freezed.dart';
part 'completed_activity_model.g.dart';

@freezed
@HiveType(typeId: 2)
class CompletedActivityModel with _$CompletedActivityModel {
  const factory CompletedActivityModel({
    @HiveField(0) required String id,
    @HiveField(1) required ActivityModel activity,
    @HiveField(2) required DateTime startedAt,
    @HiveField(3) required DateTime endedAt,
    @HiveField(4) @Default('') note,
    // DateTime is breakpoint and Duration is break duration
    @HiveField(5) @Default({}) Map<DateTime, Duration>? breaks,
  }) = _CompletedActivityModel;

  factory CompletedActivityModel.fromJson(Map<String, dynamic> json) =>
      _$CompletedActivityModelFromJson(json);

  factory CompletedActivityModel.fromOngoing({
    required OngoingActivityModel ongoing,
    required DateTime endedAt,
  }) =>
      CompletedActivityModel(
        id: _getIdFromOngoingActivityId(ongoing.id),
        activity: ongoing.activity,
        startedAt: ongoing.startedAt,
        endedAt: endedAt,
        note: ongoing.note,
        breaks: ongoing.breaks,
      );

  static String _getIdFromOngoingActivityId(String ongoingActivityId) {
    return ongoingActivityId.replaceFirst('A', 'C');
  }
}
