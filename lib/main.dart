import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/app_widget.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';

LocalStorage _localStorage = GetIt.I<LocalStorage>();
ClientHttpService _httpService = GetIt.I<ClientHttpService>();
AppViewModel _appViewModel = GetIt.I<AppViewModel>();

void mainEntry() async {
  await _localStorage.init();
  _httpService.init();
  await _appViewModel.setInitialRoute();
  print("setted");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppWidget());
}
