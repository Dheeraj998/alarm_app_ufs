// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  List<WeModel>? get weather => throw _privateConstructorUsedError;
  MainModel? get main => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({List<WeModel>? weather, MainModel? main, String? name});

  $MainModelCopyWith<$Res>? get main;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeModel>?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainModelCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainModelCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeModel>? weather, MainModel? main, String? name});

  @override
  $MainModelCopyWith<$Res>? get main;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = freezed,
    Object? main = freezed,
    Object? name = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeModel>?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl({final List<WeModel>? weather, this.main, this.name})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  final List<WeModel>? _weather;
  @override
  List<WeModel>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MainModel? main;
  @override
  final String? name;

  @override
  String toString() {
    return 'WeatherModel(weather: $weather, main: $main, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weather), main, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final List<WeModel>? weather,
      final MainModel? main,
      final String? name}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  List<WeModel>? get weather;
  @override
  MainModel? get main;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeModel _$WeModelFromJson(Map<String, dynamic> json) {
  return _WeModel.fromJson(json);
}

/// @nodoc
mixin _$WeModel {
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeModelCopyWith<WeModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeModelCopyWith<$Res> {
  factory $WeModelCopyWith(WeModel value, $Res Function(WeModel) then) =
      _$WeModelCopyWithImpl<$Res, WeModel>;
  @useResult
  $Res call({String? main, String? description, String? icon});
}

/// @nodoc
class _$WeModelCopyWithImpl<$Res, $Val extends WeModel>
    implements $WeModelCopyWith<$Res> {
  _$WeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeModelImplCopyWith<$Res> implements $WeModelCopyWith<$Res> {
  factory _$$WeModelImplCopyWith(
          _$WeModelImpl value, $Res Function(_$WeModelImpl) then) =
      __$$WeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? main, String? description, String? icon});
}

/// @nodoc
class __$$WeModelImplCopyWithImpl<$Res>
    extends _$WeModelCopyWithImpl<$Res, _$WeModelImpl>
    implements _$$WeModelImplCopyWith<$Res> {
  __$$WeModelImplCopyWithImpl(
      _$WeModelImpl _value, $Res Function(_$WeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeModelImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeModelImpl implements _WeModel {
  const _$WeModelImpl({this.main, this.description, this.icon});

  factory _$WeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeModelImplFromJson(json);

  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'WeModel(main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeModelImpl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeModelImplCopyWith<_$WeModelImpl> get copyWith =>
      __$$WeModelImplCopyWithImpl<_$WeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeModelImplToJson(
      this,
    );
  }
}

abstract class _WeModel implements WeModel {
  const factory _WeModel(
      {final String? main,
      final String? description,
      final String? icon}) = _$WeModelImpl;

  factory _WeModel.fromJson(Map<String, dynamic> json) = _$WeModelImpl.fromJson;

  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeModelImplCopyWith<_$WeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainModel _$MainModelFromJson(Map<String, dynamic> json) {
  return _MainModel.fromJson(json);
}

/// @nodoc
mixin _$MainModel {
  num? get temp => throw _privateConstructorUsedError;
  num? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainModelCopyWith<MainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainModelCopyWith<$Res> {
  factory $MainModelCopyWith(MainModel value, $Res Function(MainModel) then) =
      _$MainModelCopyWithImpl<$Res, MainModel>;
  @useResult
  $Res call({num? temp, num? humidity});
}

/// @nodoc
class _$MainModelCopyWithImpl<$Res, $Val extends MainModel>
    implements $MainModelCopyWith<$Res> {
  _$MainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainModelImplCopyWith<$Res>
    implements $MainModelCopyWith<$Res> {
  factory _$$MainModelImplCopyWith(
          _$MainModelImpl value, $Res Function(_$MainModelImpl) then) =
      __$$MainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? temp, num? humidity});
}

/// @nodoc
class __$$MainModelImplCopyWithImpl<$Res>
    extends _$MainModelCopyWithImpl<$Res, _$MainModelImpl>
    implements _$$MainModelImplCopyWith<$Res> {
  __$$MainModelImplCopyWithImpl(
      _$MainModelImpl _value, $Res Function(_$MainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$MainModelImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as num?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainModelImpl implements _MainModel {
  const _$MainModelImpl({this.temp, this.humidity});

  factory _$MainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainModelImplFromJson(json);

  @override
  final num? temp;
  @override
  final num? humidity;

  @override
  String toString() {
    return 'MainModel(temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainModelImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainModelImplCopyWith<_$MainModelImpl> get copyWith =>
      __$$MainModelImplCopyWithImpl<_$MainModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainModelImplToJson(
      this,
    );
  }
}

abstract class _MainModel implements MainModel {
  const factory _MainModel({final num? temp, final num? humidity}) =
      _$MainModelImpl;

  factory _MainModel.fromJson(Map<String, dynamic> json) =
      _$MainModelImpl.fromJson;

  @override
  num? get temp;
  @override
  num? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainModelImplCopyWith<_$MainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
