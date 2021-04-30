enum AppTheme { LIGHT, DARK }
enum ENV { PRD, DEV }

class Constants {
  String _env = "DEV";
  static final Map<String, dynamic> _data = {
    "PRD": {"app_name": "Siga"},
    "DEV": {"app_name": "Siga_dev"},
  };

  void setEnv(ENV env) {
    if (env == ENV.DEV)
      _env = "DEV";
    else
      _env = "PRD";
  }

  String get getAppName => _data[_env]["app_name"];
}
