import 'package:flutter/material.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/interfaces/i_router.dart';
import 'package:siga_mobile/app/views/unauth/index/index_view.dart';

class SigaRouter extends Logger implements IRouter {
  Widget _initialRoute = IndexView();

  set setInitialRoute(Widget newInitialRoute) =>
      _initialRoute = newInitialRoute;

  Widget get getInitialRoute => _initialRoute;

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
