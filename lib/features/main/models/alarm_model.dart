import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'alarm_model.freezed.dart';
part 'alarm_model.g.dart';

String listOfAlarmToJson(List<AlarmModel> data) {
  return jsonEncode(List<dynamic>.from(data.map((x) {
    return x.toJson();
  })));
}

List<AlarmModel> listOfAlarmFromHive(String str) =>
    List<AlarmModel>.from(json.decode(str).map((x) => AlarmModel.fromJson(x)));

@freezed
class AlarmModel with _$AlarmModel {
  const factory AlarmModel({
    String? dateTime,
    String? id,
    bool? isSelected,
  }) = _AlarmModel;

  factory AlarmModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmModelFromJson(json);
}
