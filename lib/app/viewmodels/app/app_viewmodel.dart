import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
part 'app_viewmodel.g.dart';

LocalStorage _localStorage = GetIt.I<LocalStorage>();
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

  Future<void> setApiToken(String token) async {
    await _localStorage.put("cache", "token", token);
  }

  Future<void> clearSessionData() async {
    await _localStorage.clearSessionData();
  }

  String? get getApiToken => _localStorage.get<String?>("cache", "token");
}
