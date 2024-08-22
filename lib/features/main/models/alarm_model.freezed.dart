// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlarmModel _$AlarmModelFromJson(Map<String, dynamic> json) {
  return _AlarmModel.fromJson(json);
}

/// @nodoc
mixin _$AlarmModel {
  String? get dateTime => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlarmModelCopyWith<AlarmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmModelCopyWith<$Res> {
  factory $AlarmModelCopyWith(
          AlarmModel value, $Res Function(AlarmModel) then) =
      _$AlarmModelCopyWithImpl<$Res, AlarmModel>;
  @useResult
  $Res call({String? dateTime, String? id, bool? isSelected});
}

/// @nodoc
class _$AlarmModelCopyWithImpl<$Res, $Val extends AlarmModel>
    implements $AlarmModelCopyWith<$Res> {
  _$AlarmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? id = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlarmModelImplCopyWith<$Res>
    implements $AlarmModelCopyWith<$Res> {
  factory _$$AlarmModelImplCopyWith(
          _$AlarmModelImpl value, $Res Function(_$AlarmModelImpl) then) =
      __$$AlarmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? dateTime, String? id, bool? isSelected});
}

/// @nodoc
class __$$AlarmModelImplCopyWithImpl<$Res>
    extends _$AlarmModelCopyWithImpl<$Res, _$AlarmModelImpl>
    implements _$$AlarmModelImplCopyWith<$Res> {
  __$$AlarmModelImplCopyWithImpl(
      _$AlarmModelImpl _value, $Res Function(_$AlarmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? id = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$AlarmModelImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlarmModelImpl implements _AlarmModel {
  const _$AlarmModelImpl({this.dateTime, this.id, this.isSelected});

  factory _$AlarmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlarmModelImplFromJson(json);

  @override
  final String? dateTime;
  @override
  final String? id;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'AlarmModel(dateTime: $dateTime, id: $id, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime, id, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      __$$AlarmModelImplCopyWithImpl<_$AlarmModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlarmModelImplToJson(
      this,
    );
  }
}

abstract class _AlarmModel implements AlarmModel {
  const factory _AlarmModel(
      {final String? dateTime,
      final String? id,
      final bool? isSelected}) = _$AlarmModelImpl;

  factory _AlarmModel.fromJson(Map<String, dynamic> json) =
      _$AlarmModelImpl.fromJson;

  @override
  String? get dateTime;
  @override
  String? get id;
  @override
  bool? get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$AlarmModelImplCopyWith<_$AlarmModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
