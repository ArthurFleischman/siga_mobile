import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'core/constants.dart';

final _controller = GetIt.I<AppController>();
final _router = GetIt.I<SigaRouter>();
final _const = GetIt.I<Constants>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: _const.isDevMode ? true : false,
        title: _const.getAppName,
        builder: asuka.builder,
        theme: _const.getLightTheme,
        darkTheme: _const.getDarkTheme,
        themeMode: _controller.getCurrentTheme,
        initialRoute: _router.initialRoute,
        routes: _router.getRoutes,
      ),
    );
  }
}
