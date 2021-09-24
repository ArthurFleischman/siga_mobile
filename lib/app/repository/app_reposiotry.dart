import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/services/client_http_service.dart';

final ClientHttpService _client = GetIt.I<ClientHttpService>();

class AppRepository extends Logger {
  Future<bool> isSessionValid() async {
    try {
      Response<dynamic> response = await _client.get("/safe/check");
      if (response.statusCode == 200)
        return response.data["is_up"];
      else
        return false;
    } catch (e) {
      error(e.toString());
      return false;
    }
  }
}
