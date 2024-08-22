import 'dart:developer';

import 'package:alarm_app/common/widgets/common_text.dart';
import 'package:alarm_app/core/extension/extension.dart';
import 'package:alarm_app/features/main/controller/main_controller.dart';
import 'package:alarm_app/utils/http_response.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    getLocationFn();
    super.initState();
  }

  getLocationFn() async {
    await _getCurrentLocation(context);
    if (mounted &&
        context.mainProvider.latitude != null &&
        context.mainProvider.longitude != null) {
      context.mainProvider.getWeatherOfCurrentLocationApiFn();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          _weather(),
          _alarmList(),
          const SizedBox(height: 20),
          _alarmCreate()
        ],
      ),
    ));
  }

  Consumer<MainController> _weather() {
    return Consumer<MainController>(builder: (context, main, _) {
      return main.weatherApiResponse?.loading == true
          ? const SizedBox(
              height: 100,
              child:
                  Center(child: CommonText(text: "Fetching weather data...")))
          : (main.weatherApiResponse?.status) != APIstatus.onSuccess
              ? const SizedBox()
              : Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.5)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text: main.weatherModel?.name ?? "",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          CommonText(
                            text: main.weatherModel?.weather?[0].main
                                    .toString() ??
                                "",
                            fontSize: 15,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      CommonText(
                        text:
                            "${main.weatherModel?.main?.temp?.toString() ?? ""} F",
                        fontSize: 15,
                      ),
                    ],
                  ));
    });
  }

  Consumer<MainController> _alarmCreate() {
    return Consumer<MainController>(builder: (context, main, _) {
      return Container(
        decoration: BoxDecoration(color: Colors.green.withOpacity(.5)),
        child: DateTimePicker(
          type: DateTimePickerType.time,
          initialValue: '',
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          dateLabelText: 'Date',
          timeHintText: "Add", confirmText: "",
          // icon: Icon(Icons.add),
          textAlign: TextAlign.center,
          onChanged: (val) {
            log("^^^^^^^^^^^^ $val");
            context.mainProvider.createAlarmFn(dateTime: val!);
          },
          validator: (val) {
            print(val);
            return null;
          },
          onSaved: (val) {},
        ),
      );
    });
  }

  Consumer<MainController> _alarmList() {
    return Consumer<MainController>(builder: (context, main, _) {
      return Expanded(
          child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        // controller: productController,
        shrinkWrap: true,
        itemCount: main.alarmsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: DateTimePicker(
                        type: DateTimePickerType.time,
                        initialValue: '',
                        firstDate: DateTime(2000),
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white.withOpacity(.5),
                        ),
                        lastDate: DateTime(2100),
                        dateLabelText: 'Date',
                        // timeHintText: "Add",
                        textAlign: TextAlign.center,
                        onChanged: (val) {
                          log("******** printed");
                          context.mainProvider.editTimeFn(
                              time: val, id: main.alarmsList[index].id ?? "");
                        },
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) {},
                      ),
                    ),
                  ),
                  Text(main.alarmsList[index].dateTime ?? ""),
                  Switch(
                      value: main.alarmsList[index].isSelected ?? false,
                      onChanged: (val) {
                        context.mainProvider.editAlarmStatus(
                            id: main.alarmsList[index]?.id ?? "");
                      })
                ],
              ));
        },
      ));
    });
  }

  Future<void> _getCurrentLocation(BuildContext context) async {
    // Check for location permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        Fluttertoast.showToast(msg: "Access denied");
        return;
      }
    }

    // Get current position
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    log("_________--->>> position  ${position.latitude}");
    context.mainProvider
        .getLatAndLong(lat: position.latitude, long: position.longitude);
  }
}
