import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/enums.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';

final LocalStorage _localStorage = GetIt.I<LocalStorage>();

class Defaults {
  static const defaultEnv = ENV.DEV;
  static const defualtTheme = AppTheme.LIGHT;

  Future<void> init() async {
    _localStorage.put("config", "theme", defualtTheme);
  }
}
