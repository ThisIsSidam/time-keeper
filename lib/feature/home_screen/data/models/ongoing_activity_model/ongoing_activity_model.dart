import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../activity_model/activity_model.dart';

part 'ongoing_activity_model.freezed.dart';
part 'ongoing_activity_model.g.dart';

@freezed
@HiveType(typeId: 1)
class OngoingActivityModel with _$OngoingActivityModel {
  const factory OngoingActivityModel({
    @HiveField(0) required String id,
    @HiveField(1) required ActivityModel activity,
    @HiveField(2) required DateTime startedAt,
    @HiveField(3) @Default('') String? note,
    // DateTime is breakpoint and Duration is break duration
    @HiveField(4) @Default({}) Map<DateTime, Duration>? breaks,
  }) = _OngoingActivityModel;

  factory OngoingActivityModel.fromJson(Map<String, dynamic> json) =>
      _$OngoingActivityModelFromJson(json);
}
