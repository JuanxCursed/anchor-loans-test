import 'package:dio/dio.dart';

class ApiUtils {
  static void isResponseValidOrThrowException(Response response) {
    if (response.statusCode != 200) {
      throw Exception();
    }
  }
}
