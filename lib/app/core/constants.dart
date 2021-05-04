enum AppTheme { LIGHT, DARK }
enum ENV { PRD, DEV }

class Constants {
  String _envMode = "DEV";
  ENV _env = ENV.DEV;
  
  static final Map<String, dynamic> _data = {
    "PRD": {"app_name": "Siga"},
    "DEV": {"app_name": "Siga_dev"},
  };

  void setEnv(ENV env) {
    if (env == ENV.DEV)
      _envMode = "DEV";
    else
      _envMode = "PRD";
    
  }

  String get getAppName => _data[_envMode]["app_name"];
  ENV get getEnv => _env;
  bool get isDevMode => _env == ENV.DEV;
}
