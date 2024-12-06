// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OngoingActivityModel _$OngoingActivityModelFromJson(Map<String, dynamic> json) {
  return _OngoingActivityModel.fromJson(json);
}

/// @nodoc
mixin _$OngoingActivityModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  ActivityModel get activity => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get startedAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get note =>
      throw _privateConstructorUsedError; // DateTime is breakpoint and Duration is break duration
  @HiveField(4)
  Map<DateTime, Duration>? get breaks => throw _privateConstructorUsedError;

  /// Serializes this OngoingActivityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OngoingActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OngoingActivityModelCopyWith<OngoingActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingActivityModelCopyWith<$Res> {
  factory $OngoingActivityModelCopyWith(OngoingActivityModel value,
          $Res Function(OngoingActivityModel) then) =
      _$OngoingActivityModelCopyWithImpl<$Res, OngoingActivityModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) ActivityModel activity,
      @HiveField(2) DateTime startedAt,
      @HiveField(3) String? note,
      @HiveField(4) Map<DateTime, Duration>? breaks});

  $ActivityModelCopyWith<$Res> get activity;
}

/// @nodoc
class _$OngoingActivityModelCopyWithImpl<$Res,
        $Val extends OngoingActivityModel>
    implements $OngoingActivityModelCopyWith<$Res> {
  _$OngoingActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OngoingActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activity = null,
    Object? startedAt = null,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      breaks: freezed == breaks
          ? _value.breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, Duration>?,
    ) as $Val);
  }

  /// Create a copy of OngoingActivityModel
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
abstract class _$$OngoingActivityModelImplCopyWith<$Res>
    implements $OngoingActivityModelCopyWith<$Res> {
  factory _$$OngoingActivityModelImplCopyWith(_$OngoingActivityModelImpl value,
          $Res Function(_$OngoingActivityModelImpl) then) =
      __$$OngoingActivityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) ActivityModel activity,
      @HiveField(2) DateTime startedAt,
      @HiveField(3) String? note,
      @HiveField(4) Map<DateTime, Duration>? breaks});

  @override
  $ActivityModelCopyWith<$Res> get activity;
}

/// @nodoc
class __$$OngoingActivityModelImplCopyWithImpl<$Res>
    extends _$OngoingActivityModelCopyWithImpl<$Res, _$OngoingActivityModelImpl>
    implements _$$OngoingActivityModelImplCopyWith<$Res> {
  __$$OngoingActivityModelImplCopyWithImpl(_$OngoingActivityModelImpl _value,
      $Res Function(_$OngoingActivityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OngoingActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activity = null,
    Object? startedAt = null,
    Object? note = freezed,
    Object? breaks = freezed,
  }) {
    return _then(_$OngoingActivityModelImpl(
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      breaks: freezed == breaks
          ? _value._breaks
          : breaks // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, Duration>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OngoingActivityModelImpl implements _OngoingActivityModel {
  const _$OngoingActivityModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.activity,
      @HiveField(2) required this.startedAt,
      @HiveField(3) this.note = '',
      @HiveField(4) final Map<DateTime, Duration>? breaks = const {}})
      : _breaks = breaks;

  factory _$OngoingActivityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingActivityModelImplFromJson(json);

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
  @JsonKey()
  @HiveField(3)
  final String? note;
// DateTime is breakpoint and Duration is break duration
  final Map<DateTime, Duration>? _breaks;
// DateTime is breakpoint and Duration is break duration
  @override
  @JsonKey()
  @HiveField(4)
  Map<DateTime, Duration>? get breaks {
    final value = _breaks;
    if (value == null) return null;
    if (_breaks is EqualUnmodifiableMapView) return _breaks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'OngoingActivityModel(id: $id, activity: $activity, startedAt: $startedAt, note: $note, breaks: $breaks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingActivityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._breaks, _breaks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, activity, startedAt, note,
      const DeepCollectionEquality().hash(_breaks));

  /// Create a copy of OngoingActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingActivityModelImplCopyWith<_$OngoingActivityModelImpl>
      get copyWith =>
          __$$OngoingActivityModelImplCopyWithImpl<_$OngoingActivityModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingActivityModelImplToJson(
      this,
    );
  }
}

abstract class _OngoingActivityModel implements OngoingActivityModel {
  const factory _OngoingActivityModel(
          {@HiveField(0) required final String id,
          @HiveField(1) required final ActivityModel activity,
          @HiveField(2) required final DateTime startedAt,
          @HiveField(3) final String? note,
          @HiveField(4) final Map<DateTime, Duration>? breaks}) =
      _$OngoingActivityModelImpl;

  factory _OngoingActivityModel.fromJson(Map<String, dynamic> json) =
      _$OngoingActivityModelImpl.fromJson;

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
  String? get note; // DateTime is breakpoint and Duration is break duration
  @override
  @HiveField(4)
  Map<DateTime, Duration>? get breaks;

  /// Create a copy of OngoingActivityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OngoingActivityModelImplCopyWith<_$OngoingActivityModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
