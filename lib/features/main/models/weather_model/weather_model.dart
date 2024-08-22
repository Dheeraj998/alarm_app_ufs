import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    List<WeModel>? weather,
    MainModel? main,
    String? name,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class WeModel with _$WeModel {
  const factory WeModel({
    String? main,
    String? description,
    String? icon,
  }) = _WeModel;

  factory WeModel.fromJson(Map<String, dynamic> json) =>
      _$WeModelFromJson(json);
}

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    num? temp,
    num? humidity,
  }) = _MainModel;

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);
}
