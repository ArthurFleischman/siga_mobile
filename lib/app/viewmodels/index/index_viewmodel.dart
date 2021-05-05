import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:siga_mobile/app/views/unauth/login/login_view.dart';

part 'index_viewmodel.g.dart';

class IndexViewModel = _IndexViewModelBase with _$IndexViewModel;

abstract class _IndexViewModelBase with Store {
  void navigateToLogin(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginView()));
  }
}
