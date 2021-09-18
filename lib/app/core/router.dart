import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/interfaces/i_router.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/views/auth/home/home_view.dart';

import 'package:siga_mobile/app/views/unauth/index/index_view.dart';

final _localStorage = GetIt.I<LocalStorage>();

class SigaRouter extends Logger implements IRouter {
  Widget _initialRoute = IndexView();

  set setInitialRoute(Widget newInitialRoute) => _initialRoute;

  Widget get getInitialRoute => _initialRoute;

  void setupRoutes() {
    if (_localStorage.get("cache", "user") != null) {
      _initialRoute = HomeView();
    } else
      _initialRoute = IndexView();
  }

  void popAndNavigate(BuildContext context, Widget route) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => route),
    );
  }

  void navigate(BuildContext context, Widget route) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => route),
    );
  }
}
