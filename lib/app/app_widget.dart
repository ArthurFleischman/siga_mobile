import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siga_mobile/app/app_controller.dart';

import 'core/constants.dart';

final _controller = Modular.get<AppController>();
final _const = Modular.get<Constants>();

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
        initialRoute: Modular.initialRoute,
      ).modular(),
    );
  }
}
