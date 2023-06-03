import 'src/services/services.dart';

import 'src/controllers/controllers.dart';
import 'package:flutter/material.dart';
import 'src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SettingsController settingsController =
      SettingsController(SharedPrefSettingsService());
  await settingsController.loadSettings();
  runApp(MyApp(settingsController: settingsController));
}
