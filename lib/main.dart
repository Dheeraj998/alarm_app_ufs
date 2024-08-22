import 'package:alarm/alarm.dart';
import 'package:alarm_app/core/theme/app_theme.dart';
import 'package:alarm_app/features/main/controller/main_controller.dart';
import 'package:alarm_app/features/main/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await Hive.initFlutter();
  await Alarm.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainController()..initFn())
      ],
      child: MaterialApp(
        title: 'Alarm App',
        debugShowCheckedModeBanner: false,
        theme: Themes.darkTheme,
        home: MainScreen(),
      ),
    );
  }
}

void initializeNotifications() {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  // flutterLocalNotificationsPlugin.initialize(initializationSettings,
  onSelectNotification:
  (String? payload) async {
    // Handle notification tap
  };
}
