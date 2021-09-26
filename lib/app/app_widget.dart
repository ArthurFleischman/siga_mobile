import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:siga_mobile/app/core/defaults.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';
import 'core/constants.dart';

final _appVM = GetIt.I<AppViewModel>();
final _router = GetIt.I<SigaRouter>();
final _const = GetIt.I<Constants>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(_router.getInitialRoute.toString());
    return FutureBuilder(
      future: GetIt.I.allReady(),
      builder: (BuildContext context, AsyncSnapshot snapshot) =>
          StreamBuilder<BoxEvent>(
        stream: _appVM.getBoxStream(),
        builder: (context, snapshot) {
          return MaterialApp(
            debugShowCheckedModeBanner: _const.isDevMode ? true : false,
            title: _const.getAppName,
            builder: asuka.builder,
            theme: _const.getLightTheme,
            darkTheme: _const.getDarkTheme,
            themeMode: snapshot.data != null && snapshot.data!.value == 0
                ? ThemeMode.dark
                : ThemeMode.light,
            home: _router.getInitialRoute,
          );
        },
      ),
    );
  }
}
