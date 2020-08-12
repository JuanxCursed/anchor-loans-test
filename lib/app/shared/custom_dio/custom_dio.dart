import 'package:dio/dio.dart';
import 'package:marriedgames_app/app/shared/custom_dio/interceptors.dart';

class CustomDio {
  static const int TIMEOUT = 4000;
  final Dio client;
  String baseUrl;

  CustomDio(this.client, this.baseUrl) {
    client.options.baseUrl = baseUrl;
    client.options.connectTimeout = TIMEOUT;
    client.interceptors.add(CustomInterceptor());
  }
}
