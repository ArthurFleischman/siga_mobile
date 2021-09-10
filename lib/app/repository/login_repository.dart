import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
import 'package:siga_mobile/app/shared/local_storage.dart';

class LoginRepository {
  final ClientHttpService _client = ClientHttpService();
  final Constants _const = GetIt.I<Constants>();
  final LocalStorage _storage = GetIt.I<LocalStorage>();

  Future<bool> login(String username, String password) async {
    try {
      Response<dynamic> response = await _client.post(_const.getLoginUrl,
          json.encode({"username": username, "password": password}));
      if (response.statusCode == 200) {
        _client.addToken("Bearer ${response.data["token"]}");
        _storage.put("cache", "user", response.data["id"]);
        return true;
      } else
        return false;
    } catch (e) {
      print("error");
      return false;
    }
  }
}
