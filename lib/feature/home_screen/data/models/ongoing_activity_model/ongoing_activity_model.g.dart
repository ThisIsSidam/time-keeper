// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ongoing_activity_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OngoingActivityModelAdapter extends TypeAdapter<OngoingActivityModel> {
  @override
  final int typeId = 1;

  @override
  OngoingActivityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OngoingActivityModel(
      id: fields[0] as String,
      activity: fields[1] as ActivityModel,
      startedAt: fields[2] as DateTime,
      note: fields[3] as String?,
      breaks: (fields[4] as Map?)?.cast<DateTime, Duration>(),
    );
  }

  @override
  void write(BinaryWriter writer, OngoingActivityModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.activity)
      ..writeByte(2)
      ..write(obj.startedAt)
      ..writeByte(3)
      ..write(obj.note)
      ..writeByte(4)
      ..write(obj.breaks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OngoingActivityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OngoingActivityModelImpl _$$OngoingActivityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OngoingActivityModelImpl(
      id: json['id'] as String,
      activity:
          ActivityModel.fromJson(json['activity'] as Map<String, dynamic>),
      startedAt: DateTime.parse(json['startedAt'] as String),
      note: json['note'] as String? ?? '',
      breaks: (json['breaks'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), Duration(microseconds: (e as num).toInt())),
          ) ??
          const {},
    );

Map<String, dynamic> _$$OngoingActivityModelImplToJson(
        _$OngoingActivityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activity': instance.activity,
      'startedAt': instance.startedAt.toIso8601String(),
      'note': instance.note,
      'breaks': instance.breaks
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };
