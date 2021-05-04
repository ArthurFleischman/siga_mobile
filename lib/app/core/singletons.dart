
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';

GetIt _getIt = GetIt.instance;

void registerSingletons(){
  _getIt.registerSingleton<AppController>(AppController());
  _getIt.registerSingleton<Constants>(Constants());
  _getIt.registerSingleton<Logger>(Logger());
}
