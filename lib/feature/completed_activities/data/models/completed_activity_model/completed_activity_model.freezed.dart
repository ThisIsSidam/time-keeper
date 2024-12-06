// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompletedActivityModel _$CompletedActivityModelFromJson(
    Map<String, dynamic> json) {
  return _CompletedActivityModel.fromJson(json);
}

/// @nodoc
mixin _$CompletedActivityModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  ActivityModel get activity => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get startedAt => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get endedAt => throw _privateConstructorUsedError;
  @HiveField(4)
  dynamic get note =>
      throw _privateConstructorUsedError; // DateTime is breakpoint and Duration is break duration
  @HiveField(5)
  Map<DateTime, Duration>? get breaks => throw _privateConstructorUsedError;

  /// Serializes this CompletedActivityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedActivityModelCopyWith<CompletedActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedActivityModelCopyWith<$Res> {
  factory $CompletedActivityModelCopyWith(CompletedActivityModel value,
          $Res Function(CompletedActivityModel) then) =
      _$CompletedActivityModelCopyWithImpl<$Res, CompletedActivityModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) ActivityModel activity,
      @HiveField(2) DateTime startedAt,
      @HiveField(3) DateTime endedAt,
      @HiveField(4) dynamic note,
      @HiveField(5) Map<DateTime, Duration>? breaks});

  $ActivityModelCopyWith<$Res> get activity;
}

/// @nodoc
class _$CompletedActivityModelCopyWithImpl<$Res,
        $Val extends CompletedActivityModel>
    implements $CompletedActivityModelCopyWith<$Res> {
  _$CompletedActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activity = null,
    Object? startedAt = null,
    Object? endedAt = null,
    Object? note = freezed,
    Object? breaks = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: null == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as dynamic,
      breaks: freezed == breaks
          ? _value.breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, Duration>?,
    ) as $Val);
  }

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityModelCopyWith<$Res> get activity {
    return $ActivityModelCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedActivityModelImplCopyWith<$Res>
    implements $CompletedActivityModelCopyWith<$Res> {
  factory _$$CompletedActivityModelImplCopyWith(
          _$CompletedActivityModelImpl value,
          $Res Function(_$CompletedActivityModelImpl) then) =
      __$$CompletedActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) ActivityModel activity,
      @HiveField(2) DateTime startedAt,
      @HiveField(3) DateTime endedAt,
      @HiveField(4) dynamic note,
      @HiveField(5) Map<DateTime, Duration>? breaks});

  @override
  $ActivityModelCopyWith<$Res> get activity;
}

/// @nodoc
class __$$CompletedActivityModelImplCopyWithImpl<$Res>
    extends _$CompletedActivityModelCopyWithImpl<$Res,
        _$CompletedActivityModelImpl>
    implements _$$CompletedActivityModelImplCopyWith<$Res> {
  __$$CompletedActivityModelImplCopyWithImpl(
      _$CompletedActivityModelImpl _value,
      $Res Function(_$CompletedActivityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activity = null,
    Object? startedAt = null,
    Object? endedAt = null,
    Object? note = freezed,
    Object? breaks = freezed,
  }) {
    return _then(_$CompletedActivityModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: null == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note ? _value.note! : note,
      breaks: freezed == breaks
          ? _value._breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, Duration>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletedActivityModelImpl implements _CompletedActivityModel {
  const _$CompletedActivityModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.activity,
      @HiveField(2) required this.startedAt,
      @HiveField(3) required this.endedAt,
      @HiveField(4) this.note = '',
      @HiveField(5) final Map<DateTime, Duration>? breaks = const {}})
      : _breaks = breaks;

  factory _$CompletedActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletedActivityModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final ActivityModel activity;
  @override
  @HiveField(2)
  final DateTime startedAt;
  @override
  @HiveField(3)
  final DateTime endedAt;
  @override
  @JsonKey()
  @HiveField(4)
  final dynamic note;
// DateTime is breakpoint and Duration is break duration
  final Map<DateTime, Duration>? _breaks;
// DateTime is breakpoint and Duration is break duration
  @override
  @JsonKey()
  @HiveField(5)
  Map<DateTime, Duration>? get breaks {
    final value = _breaks;
    if (value == null) return null;
    if (_breaks is EqualUnmodifiableMapView) return _breaks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CompletedActivityModel(id: $id, activity: $activity, startedAt: $startedAt, endedAt: $endedAt, note: $note, breaks: $breaks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedActivityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other._breaks, _breaks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      activity,
      startedAt,
      endedAt,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(_breaks));

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedActivityModelImplCopyWith<_$CompletedActivityModelImpl>
      get copyWith => __$$CompletedActivityModelImplCopyWithImpl<
          _$CompletedActivityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletedActivityModelImplToJson(
      this,
    );
  }
}

abstract class _CompletedActivityModel implements CompletedActivityModel {
  const factory _CompletedActivityModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final ActivityModel activity,
          @HiveField(2) required final DateTime startedAt,
          @HiveField(3) required final DateTime endedAt,
          @HiveField(4) final dynamic note,
          @HiveField(5) final Map<DateTime, Duration>? breaks}) =
      _$CompletedActivityModelImpl;

  factory _CompletedActivityModel.fromJson(Map<String, dynamic> json) =
      _$CompletedActivityModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  ActivityModel get activity;
  @override
  @HiveField(2)
  DateTime get startedAt;
  @override
  @HiveField(3)
  DateTime get endedAt;
  @override
  @HiveField(4)
  dynamic get note; // DateTime is breakpoint and Duration is break duration
  @override
  @HiveField(5)
  Map<DateTime, Duration>? get breaks;

  /// Create a copy of CompletedActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedActivityModelImplCopyWith<_$CompletedActivityModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
