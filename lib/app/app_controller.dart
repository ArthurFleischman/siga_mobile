import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/defaults.dart';
part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  AppTheme _appTheme = Defaults.defualtTheme;

  ThemeMode get getCurrentTheme =>
      _appTheme == AppTheme.LIGHT ? ThemeMode.light : ThemeMode.dark;

  @action
  void changeTheme() {
    if (_appTheme == AppTheme.LIGHT)
      _appTheme = AppTheme.DARK;
    else
      _appTheme = AppTheme.LIGHT;
  }
}
