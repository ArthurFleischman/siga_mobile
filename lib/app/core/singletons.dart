
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/core/router.dart';

GetIt _getIt = GetIt.instance;

void registerSingletons(){
  _getIt.registerSingleton<AppController>(AppController(),signalsReady: true);
  _getIt.registerSingleton<Constants>(Constants(),signalsReady: true);
  _getIt.registerSingleton<Logger>(Logger(),signalsReady: true);
  _getIt.registerSingleton<SigaRouter>(SigaRouter(),signalsReady: true);
}
