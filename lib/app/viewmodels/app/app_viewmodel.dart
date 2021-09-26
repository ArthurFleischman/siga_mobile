import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';

import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/core/enums.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/repository/app_reposiotry.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/views/auth/home/home_view.dart';
import 'package:siga_mobile/app/views/unauth/index/index_view.dart';
part 'app_viewmodel.g.dart';

final LocalStorage _localStorage = GetIt.I<LocalStorage>();
final SigaRouter _router = GetIt.I<SigaRouter>();
final AppRepository _appRepo = AppRepository();

class AppViewModel = _AppViewModelBase with _$AppViewModel;

abstract class _AppViewModelBase with Store {
  Stream<BoxEvent> getBoxStream() {
    return _localStorage.getBoxStream();
  }

  @observable
  String _appTheme = Defaults.defualtTheme;

  ThemeMode get getCurrentTheme =>
      _appTheme == AppTheme.LIGHT ? ThemeMode.light : ThemeMode.dark;
  String? get getApiToken => _localStorage.get<String?>("cache", "token");

  @action
  void changeTheme() {
    if (_appTheme == AppTheme.LIGHT)
      _appTheme = AppTheme.DARK;
    else
      _appTheme = AppTheme.LIGHT;
  }

  Future<void> setApiToken(String token) async {
    await _localStorage.put<String>("cache", "token", token);
  }

  Future<void> setInitialRoute() async {
    if (_localStorage.get<String?>("cache", "token") != null &&
        (await _appRepo.isSessionValid())) {
      _router.setInitialRoute = HomeView();
    } else
      _router.setInitialRoute = IndexView();
  }
}
