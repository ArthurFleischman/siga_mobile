import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/login/login_viewmodel.dart';

final GetIt _getIt = GetIt.instance;

void registerSingletons() {
  _getIt.registerSingleton<Constants>(Constants(), signalsReady: true);
  _getIt.registerSingleton<LocalStorage>(LocalStorage());
  _getIt.registerSingleton<AppViewModel>(AppViewModel(), signalsReady: true);
  _getIt.registerSingleton<IndexViewModel>(IndexViewModel(),
      signalsReady: true);
  _getIt.registerSingleton<Logger>(Logger(), signalsReady: true);
  _getIt.registerSingleton<SigaRouter>(SigaRouter(), signalsReady: true);
  _getIt.registerSingleton<ClientHttpService>(ClientHttpService(),
      signalsReady: true);
  _getIt.registerSingleton<LoginViewmodel>(LoginViewmodel(),
      signalsReady: true);
  _getIt.registerSingleton<HomeViewmodel>(HomeViewmodel(), signalsReady: true);
}
