import 'dart:convert';

import 'package:asuka/asuka.dart' as asuka;
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
// import 'package:siga_mobile/app/shared/local_storage.dart';

class UserRepository {
  ClientHttpService _client = GetIt.I<ClientHttpService>();
  // LocalStorage _localStorage = GetIt.I<LocalStorage>();

  Future<User?> getUser(String id) async {
    try {
      Response<dynamic> response = await _client.get("/safe/users/$id");

      if (response.statusCode == 200) {
        print(response.data);
        return User.fromJson(response.data["data"]);
      } else
        throw (Error.safeToString(response.statusMessage));
    } catch (e) {
      asuka.showSnackBar(
          asuka.AsukaSnackbar.alert("user not found\n${e.toString()}"));
    }
  }

  Future<bool> logout() async {
    try {
      Response<Map> response = await _client.post("/safe/logout", null);
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
