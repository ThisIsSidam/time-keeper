import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
@HiveType(typeId: 0)
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    @HiveField(0) required String name,
    @HiveField(1) @Default('') String? note,
    @HiveField(2) required String id,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}
