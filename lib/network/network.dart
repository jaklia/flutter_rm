import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'urls.dart';

class Network {
  Dio? _dio;

  Network._privateCtor() {
    if (_dio == null) {
      _dio = Dio(
        BaseOptions(
          baseUrl: Urls.baseUrl,
          contentType: "application/json; charset=utf-8",
        ),
      );
      if (kDebugMode) {
        _dio!.interceptors.add(
          LogInterceptor(),
        );
      }
    }
  }

  static final Network _instance = Network._privateCtor();

  static Dio get dio {
    return _instance._dio!;
  }
}
