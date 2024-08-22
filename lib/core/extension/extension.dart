import 'package:alarm_app/features/main/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension ProviderExtension on BuildContext {
  MainController get mainProvider =>
      Provider.of<MainController>(this, listen: false);
}
