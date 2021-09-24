import 'package:dio/dio.dart';
import 'package:siga_mobile/app/core/constants.dart';
import 'package:siga_mobile/app/core/logger.dart';
import 'package:siga_mobile/app/interfaces/i_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:siga_mobile/app/viewmodels/app/app_viewmodel.dart';
import 'package:siga_mobile/app/viewmodels/home/home_viewmodel.dart';

AppViewModel _appVm = GetIt.I<AppViewModel>();
Constants _constants = GetIt.I<Constants>();
HomeViewmodel _homeVM = GetIt.I<HomeViewmodel>();

class ClientHttpService extends Logger implements IRepository {
  final Dio _dio = Dio(BaseOptions(
      baseUrl: _constants.getApiUrl, connectTimeout: _constants.getTimeout));

  void init() {
    _dio.interceptors.add(InterceptorsWrapper(
        onError: (DioError err, ErrorInterceptorHandler handler) {
      if (err.response!.statusCode == 401) _homeVM.returnToIndex();
      message(err.toString());
      handler.next(err);
    }, onResponse:
            (Response<dynamic> response, ResponseInterceptorHandler handler) {
      message(
          "status code on ${response.realUri}\n${response.statusCode.toString()}\n got ${response.data}");

      handler.next(response);
    }, onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      message("registering token");
      String? token = _appVm.getApiToken;
      options.headers.addAll({'Authorization': "Bearer ${token.toString()}"});
      handler.next(options);
    }));
  }

  @override
  Future<void> addToken(String token) async {
    await _appVm.setApiToken(token);
  }

  @override
  Future<Response<dynamic>> delete(String url) async {
    return await _dio.delete(url);
  }

  @override
  Future<Response<dynamic>> get(String url) async {
    return await _dio.get(url);
  }

  @override
  Future<Response<Map>> post(String url, dynamic data) async {
    return await _dio.post(url, data: data);
  }

  @override
  Future<Response<Map>> put(String url, dynamic data) async {
    return await _dio.put(url, data: data);
  }
}
