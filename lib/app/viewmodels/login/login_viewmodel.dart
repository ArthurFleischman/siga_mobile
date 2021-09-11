import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/repository/login_repository.dart';
// import 'package:siga_mobile/app/viewmodels/index/index_viewmodel.dart';
import 'package:siga_mobile/app/views/auth/home/home_view.dart';
// import 'package:siga_mobile/app/views/unauth/index/index_view.dart';

part 'login_viewmodel.g.dart';

class LoginViewmodel = _LoginViewmodelBase with _$LoginViewmodel;
final LoginRepository _loginRepo = LoginRepository();
SigaRouter _router = GetIt.I<SigaRouter>();
// IndexViewModel _indexVM = GetIt.I<IndexViewModel>();

abstract class _LoginViewmodelBase with Store {
  @observable
  bool _isLogin = false;

  @action
  void _setLogin(bool state) {
    _isLogin = state;
  }

  Future<void> login(
      BuildContext context, String username, String password) async {
    _setLogin(true);

    if (await _loginRepo.login(username, password)) {
      _router.navigate(context, HomeView());
    } else
      asuka.showSnackBar(
          asuka.AsukaSnackbar.alert("username or password don't match"));
    _setLogin(false);
  }

  bool get isLogin => _isLogin;
}
