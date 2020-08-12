import 'package:dio/dio.dart';

class CustomInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    //options.headers = "{Authorization: Bearer 456htd6esgr5y5fg454}" @exemplo
    print("REQUEST[${options.method}] => PATH: ${options.baseUrl}${options.path}");
    if (options.data != null) {
      print(options.data);
    }
    print("-------------------------------------------------------------------------");
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print("RESPONSE[${response.statusCode}] => PATH: ${response.request.baseUrl}${response.request.path}");
    if (response.data != null) {
      print(response.data);
    }
    print("-------------------------------------------------------------------------");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print("ERROR[${err.response.statusCode}] => PATH: ${err.response.request.baseUrl}${err.request.path}");
    return super.onError(err);
  }
}
