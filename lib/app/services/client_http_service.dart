import 'package:dio/dio.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/interfaces/i_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';

AppViewModel _appVm = GetIt.I<AppViewModel>();
Constants _constants = GetIt.I<Constants>();

class ClientHttpService implements IRepository {
  final Dio dio = Dio(BaseOptions(
      baseUrl: _constants.getApiUrl, connectTimeout: _constants.getTimeout));

  @override
  void addToken(String token) {
    _appVm.setApiToken(token);
  }

  @override
  Future<Response<dynamic>> delete(String url) async {
    return await dio.delete(url);
  }

  @override
  Future<Response<dynamic>> get(String url, String params) async {
    return await dio.get(url);
  }

  @override
  Future<Response<dynamic>> post(String url, dynamic data) async {
    return await dio.post(url, data: data);
  }

  @override
  Future<Response<dynamic>> put(String url, dynamic data) async {
    return await dio.put(url, data: data);
  }
}
