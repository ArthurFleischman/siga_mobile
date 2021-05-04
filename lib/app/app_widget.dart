import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_controller.dart';
import 'core/constants.dart';


final _controller = GetIt.I<AppController>();
final _const = GetIt.I<Constants>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: _const.getAppName,
        builder: asuka.builder,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData.dark(),
        themeMode: _controller.getCurrentTheme,
        initialRoute: "/",
        navigatorObservers: [],
      )
    );
  }
}
