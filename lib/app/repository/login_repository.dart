import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';

class LoginRepository extends Logger {
  final ClientHttpService _client = GetIt.I<ClientHttpService>();
  final LocalStorage _storage = GetIt.I<LocalStorage>();

  Future<bool> login(String username, String password) async {
    try {
      Response<dynamic> response = await _client.post(
          "/login", json.encode({"username": username, "password": password}));
      if (response.statusCode == 200) {
        await _client.addToken(response.data["token"]);
        await _storage.put("cache", "user", response.data["id"]);
        return true;
      } else
        return false;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
