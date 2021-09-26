import 'package:flutter/material.dart';
import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/core/enums.dart';
import 'package:siga_mobile/app/core/theme.dart';

class Constants {
  String _env = Defaults.defaultEnv;

  static final Map<String, dynamic> _data = {
    "UNIVERSAL": {
      "timeout": 3000,
      "urls": {
        "login": "/login",
      }
    },
    "PRD": {
      "app_name": "Siga",
      "host": "https://siga-api-prod.herokuapp.com/api",
    },
    "DEV": {
      "app_name": "Siga_dev",
      "host": "https://siga-api-dev.herokuapp.com/api",
    }
  };

  static final Map<String, ThemeData> _themeData = {
    "dark": sigaDarkTeme(),
    "light": sigaLightTeme()
  };

  ThemeData get getDarkTheme => _themeData['dark']!;
  ThemeData get getLightTheme => _themeData['light']!;

  set setEnv(String env) => _env = env;
//ENV
  String get getAppName => _data[_env]["app_name"];
  String get getEnv => _env;
  bool get isDevMode => _env == ENV.DEV;
//HOST
  String get getApiUrl => _data[_env]["host"];
//CONNECTION CONFIG
  int get getTimeout => _data["UNIVERSAL"]["timeout"];
  //URLS
  String get getLoginUrl => _data["UNIVERSAL"]["urls"]["login"];
}
