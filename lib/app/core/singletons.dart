import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/login/login_viewmodel.dart';

GetIt _getIt = GetIt.instance;

void registerSingletons() {
  _getIt.registerSingleton<AppViewModel>(AppViewModel(), signalsReady: true);
  _getIt.registerSingleton<IndexViewModel>(IndexViewModel(),
      signalsReady: true);
  _getIt.registerSingleton<Constants>(Constants(), signalsReady: true);
  _getIt.registerSingleton<Logger>(Logger(), signalsReady: true);
  _getIt.registerSingleton<SigaRouter>(SigaRouter(), signalsReady: true);
  _getIt.registerSingleton<LocalStorage>(LocalStorage(), signalsReady: true);
  _getIt.registerSingleton<LoginViewmodel>(LoginViewmodel(),
      signalsReady: true);
}
