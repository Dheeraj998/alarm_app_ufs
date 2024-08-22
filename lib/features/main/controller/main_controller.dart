import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:alarm_app/features/main/models/alarm_model.dart';
import 'package:alarm_app/features/main/models/weather_model/weather_model.dart';
import 'package:alarm_app/utils/http_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

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

//create new alarm
  createAlarmFn({required String dateTime}) async {
    int id = 1;
    List<AlarmModel> list = alarmsList.toList();
    if (list.isEmpty) {
      id = 1;
    } else {
      id = list.last.id! + 1;
    }
    list.add(AlarmModel(id: id, dateTime: dateTime, isSelected: true));

    log("************* $list");
    alarmsList = list;

    alarmBox?.put("alarmList", listOfAlarmToJson(alarmsList));

    final alarmSettings = AlarmSettings(
      id: id,
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
    await Alarm.set(alarmSettings: alarmSettings);

    notifyListeners();
  }

  //toggle alarm status on/off

  editAlarmStatus({required int id}) {
    List<AlarmModel> list = alarmsList.toList();

    int? index = list.indexWhere((element) => element.id == id);

    if (index != -1) {
      list[index] =
          list[index].copyWith(isSelected: !(list[index].isSelected ?? false));

      alarmsList = list;

      notifyListeners();
    }
  }

//edit alarm time
  editTimeFn({required int id, required String? time}) {
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

  WeatherModel? weatherModel;
  APIResponse? weatherApiResponse;
  getWeatherOfCurrentLocationApiFn() async {
    weatherApiResponse = APIResponse(data: null, loading: true);
    notifyListeners();
    final String url =
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=fa24f7cce594eb12c5330c6099dc0bdb";
    try {
      final response = await http.get(Uri.parse(url));
      log("response ${response.body}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        weatherModel = WeatherModel.fromJson(jsonDecode(response.body));

        weatherApiResponse = weatherApiResponse?.copyWith(
            loading: false, status: APIstatus.onSuccess);
      } else {
        log("*********** error");

        weatherApiResponse = weatherApiResponse?.copyWith(
            loading: false, status: APIstatus.onError);
      }
    } on SocketException {
      weatherApiResponse = weatherApiResponse?.copyWith(
          loading: false, status: APIstatus.onNetworkError);
    } catch (e) {
      weatherApiResponse = weatherApiResponse?.copyWith(
          loading: false, status: APIstatus.onError);
    }
    notifyListeners();
  }
}
