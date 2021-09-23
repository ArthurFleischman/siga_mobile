import 'dart:developer';

import 'package:asuka/asuka.dart' as asuka;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';

class UserRepository extends Logger {
  final ClientHttpService _httpClient = GetIt.I<ClientHttpService>();

  Future<User?> getUser(String id) async {
    try {
      Response<dynamic> response = await _httpClient.get("/safe/users/$id");
      if (response.statusCode == 200) {
        return User.fromJson(response.data["data"]);
      } else {
        message("loggin out");
        logout();
      }
    } catch (_) {
      asuka.showSnackBar(asuka.AsukaSnackbar.alert("cannot fetch user"));

      logout();
    }
  }

  Future<bool> logout() async {
    try {
      Response<Map> response = await _httpClient.post("/safe/logout", null);
      if (response.statusCode == 200) {
        asuka.showSnackBar(asuka.AsukaSnackbar.info(response.data!['data']));
        return true;
      } else
        return false;
    } catch (e) {
      asuka.showSnackBar(asuka.AsukaSnackbar.alert("could not logout"));
      throw e;
    }
  }
}
