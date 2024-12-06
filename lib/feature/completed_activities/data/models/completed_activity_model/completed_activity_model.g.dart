// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completed_activity_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompletedActivityModelAdapter
    extends TypeAdapter<CompletedActivityModel> {
  @override
  final int typeId = 2;

  @override
  CompletedActivityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompletedActivityModel(
      id: fields[0] as String,
      activity: fields[1] as ActivityModel,
      startedAt: fields[2] as DateTime,
      endedAt: fields[3] as DateTime,
      note: fields[4] as dynamic,
      breaks: (fields[5] as Map?)?.cast<DateTime, Duration>(),
    );
  }

  @override
  void write(BinaryWriter writer, CompletedActivityModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.activity)
      ..writeByte(2)
      ..write(obj.startedAt)
      ..writeByte(3)
      ..write(obj.endedAt)
      ..writeByte(4)
      ..write(obj.note)
      ..writeByte(5)
      ..write(obj.breaks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompletedActivityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompletedActivityModelImpl _$$CompletedActivityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedActivityModelImpl(
      id: json['id'] as String,
      activity:
          ActivityModel.fromJson(json['activity'] as Map<String, dynamic>),
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: DateTime.parse(json['endedAt'] as String),
      note: json['note'] ?? '',
      breaks: (json['breaks'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), Duration(microseconds: (e as num).toInt())),
          ) ??
          const {},
    );

Map<String, dynamic> _$$CompletedActivityModelImplToJson(
        _$CompletedActivityModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activity': instance.activity,
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt.toIso8601String(),
      'note': instance.note,
      'breaks': instance.breaks
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };
