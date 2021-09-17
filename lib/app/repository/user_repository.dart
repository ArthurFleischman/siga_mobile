import 'dart:convert';

import 'package:asuka/asuka.dart' as asuka;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/router.dart';
import 'package:siga_mobile/app/models/user.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';
import 'package:siga_mobile/app/views/unauth/index/index_view.dart';
// import 'package:siga_mobile/app/shared/local_storage.dart';

class UserRepository {
  ClientHttpService _client = GetIt.I<ClientHttpService>();
  SigaRouter _router = GetIt.I<SigaRouter>();

  Future<User?> getUser(String id, BuildContext context) async {
    try {
      Response<dynamic> response = await _client.get("/safe/users/$id");
      if (response.statusCode == 200) {
        return User.fromJson(response.data["data"]);
      } else
        throw (Error.safeToString(response.statusMessage));
    } catch (e) {
      asuka.showSnackBar(
          asuka.AsukaSnackbar.alert("user not found\n${e.toString()}"));

      _router.popAndNavigate(context, IndexView());
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