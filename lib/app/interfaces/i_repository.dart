import 'package:dio/dio.dart';

abstract class IRepository {
  void addToken(String token);
  Future<Response<dynamic>> get(String url);
  Future<Response<dynamic>> post(String url, dynamic data);
  Future<Response<dynamic>> put(String url, dynamic data);
  Future<Response<dynamic>> delete(String url);
}
