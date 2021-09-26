import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'package:siga_mobile/app/core/enums.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/repository/user_repository.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/views/auth/home/pages/home_menu_page.dart';
import 'package:siga_mobile/app/views/auth/home/pages/home_settings_page.dart';
import 'package:siga_mobile/app/views/unauth/index/index_view.dart';

part 'home_viewmodel.g.dart';

class HomeViewmodel = _HomeViewmodelBase with _$HomeViewmodel;

abstract class _HomeViewmodelBase with Store {
  final UserRepository _userRepo = UserRepository();
  final LocalStorage _localStorage = GetIt.I<LocalStorage>();
  final SigaRouter _router = GetIt.I<SigaRouter>();
  final List<Widget> _homePages = [HomeMenuPage(), HomeSettingsPage()];
  final List<Widget> _navIcons = [
    Icon(Icons.home, size: 30),
    Icon(Icons.settings, size: 30)
  ];
  @observable
  bool _themeSwitchState = false;
  BuildContext? _ctx;
  @observable
  int _pageIndex = 0;

  @action
  void setpageIndex(int index) {
    _pageIndex = index;
  }

  //setter
  set setCtx(BuildContext ctx) => _ctx = ctx;
  _setTheme(String theme) => _localStorage.put("config", "theme", theme);
  @action
  void setThemeSwitchState(bool value) {
    _themeSwitchState = value;
    if (value)
      _setTheme(AppTheme.DARK);
    else
      _setTheme(AppTheme.LIGHT);
  }

  //getter
  List<Widget> get getPages => _homePages;
  List<Widget> get getNavIcons => _navIcons;
  bool get getTehemeSwitchValue => _themeSwitchState;
  int get getPageIndex => _pageIndex;

  Future<User?> getUser() async {
    try {
      return _userRepo.getUser(await _localStorage.getStoredID());
    } catch (e) {
      asuka.showSnackBar(asuka.AsukaSnackbar.alert("credentials timed out"));
    }
  }

  Future<void> logout() async {
    try {
      if (await _userRepo.logout()) {
        await _clearSessionData();
        _router.navigate(_ctx!, IndexView());
      }
    } catch (e) {
      asuka.showSnackBar(asuka.AsukaSnackbar.alert("could not logout\n$e"));
    }
  }

  void returnToIndex() {
    _router.navigate(_ctx!, IndexView());
    asuka.showSnackBar(asuka.AsukaSnackbar.alert("credentials timed out"));
  }

  Future<void> _clearSessionData() async {
    await _localStorage.clearSessionData();
  }
}
