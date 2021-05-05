import 'package:flutter/material.dart';
import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/core/theme.dart';

class ENV {
  static const String DEV = "DEV";
  static const String PRD = "PRD";
}

class Constants {
  String _env = Defaults.defaultEnv;

  static final Map<String, dynamic> _data = {
    "PRD": {"app_name": "Siga"},
    "DEV": {"app_name": "Siga_dev"},
  };

  static final Map<String, ThemeData> _themeData = {
    "dark": sigaDarkTeme(),
    "light": sigaLightTeme()
  };

  ThemeData get getDarkTheme => _themeData['dark']!;
  ThemeData get getLightTheme => _themeData['light']!;

  set setEnv(String env) => _env = env;

  String get getAppName => _data[_env]["app_name"];
  String get getEnv => _env;
  bool get isDevMode => _env == ENV.DEV;
}
