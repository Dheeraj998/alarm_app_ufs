import 'dart:developer';

import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:alarm_app/features/main/models/alarm_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:collection/collection.dart';

class MainController extends ChangeNotifier {
  List<AlarmModel> alarmsList = [];

  Box? alarmBox;
  double? latitude;
  double? longitude;
  initFn() async {
    alarmBox = await Hive.openBox("alarmBox");

    if (await alarmBox?.get('alarmList') != null) {
      alarmsList = listOfAlarmFromHive(alarmBox?.get('alarmList'));
    }

    notifyListeners();
  }

  createAlarmFn({required String dateTime}) async {
    final alarmSettings = AlarmSettings(
      id: 42,
      dateTime: DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          int.parse(dateTime.split(':')[0]),
          int.parse(dateTime.split(':')[1])),
      assetAudioPath: 'assets/alarm.mp3',
      loopAudio: true,
      vibrate: true,
      volume: 0.8,
      fadeDuration: 3.0,
      notificationTitle: 'This is the title',
      notificationBody: 'This is the body',
      enableNotificationOnKill: false,
    );
    List<AlarmModel> list = alarmsList.toList();

    list.add(AlarmModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        dateTime: dateTime,
        isSelected: true));

    log("************* $list");
    alarmsList = list;

    alarmBox?.put("alarmList", listOfAlarmToJson(alarmsList));
    await Alarm.set(alarmSettings: alarmSettings);

    notifyListeners();
  }

  editAlarmStatus({required String id}) {
    List<AlarmModel> list = alarmsList.toList();

    int? index = list.indexWhere((element) => element.id == id);

    if (index != -1) {
      list[index] =
          list[index].copyWith(isSelected: !(list[index].isSelected ?? false));

      alarmsList = list;

      notifyListeners();
    }
  }

  editTimeFn({required String id, required String? time}) {
    List<AlarmModel> list = alarmsList.toList();

    int? index = list.indexWhere((element) => element.id == id);

    if (index != -1) {
      list[index] = list[index].copyWith(dateTime: time);

      alarmsList = list;

      notifyListeners();
    }
  }

//get latitude and longitude if user provided
  getLatAndLong({double? lat, double? long}) {
    latitude = lat;
    longitude = long;
  }
}
