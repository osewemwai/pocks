import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pocks/shared/env.dart';

class DioInstance {
  final Dio dio;

  DioInstance(this.dio) {
    dio.options.baseUrl = Env.pocketBaseUrl.toString();
    dio.options.responseType = ResponseType.json;
    if (kDebugMode) {
      dio.interceptors.add(
          LogInterceptor(responseBody: true, requestBody: true, error: true));
    }
  }
}
