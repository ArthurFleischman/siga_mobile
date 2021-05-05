import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:siga_mobile/app/core/defaults.dart';
part 'app_viewmodel.g.dart';

class AppViewModel = _AppViewModelBase with _$AppViewModel;

abstract class _AppViewModelBase with Store {
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
