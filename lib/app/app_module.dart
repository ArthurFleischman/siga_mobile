import 'package:flutter_modular/flutter_modular.dart';

import 'package:siga_mobile/app/app_controller.dart';
import 'package:siga_mobile/app/core/constants.dart';

import 'package:siga_mobile/app/index/index_widget.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((_) => AppController()),
    Bind.instance((_) => Constants())
  ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => IndexWidget())
  ];
}
