import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:siga_mobile/app/app_widget.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';

import 'package:siga_mobile/app/shared/local_storage.dart';

LocalStorage _localStorage = GetIt.I<LocalStorage>();
SigaRouter _router = GetIt.I<SigaRouter>();
ClientHttpService _httpService = GetIt.I<ClientHttpService>();

void mainEntry() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _localStorage.init();
  _httpService.init();
  _router.setupRoutes();

  runApp(AppWidget());
}
