import 'package:flutter/material.dart';

abstract class IRouter {
  set setInitialRoute(Widget newInitialRoute);
  Widget get getInitialRoute;
  void setupRoutes();
}
