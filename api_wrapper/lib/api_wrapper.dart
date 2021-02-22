library api_wrapper;

import 'dart:async';

import 'package:api_wrapper/src/api/api.dart';
import 'package:dio/dio.dart';

export 'package:api_wrapper/src/models/models.dart';
export 'package:api_wrapper/src/api/api.dart';

class ApiWrapper {
  static const String baseUrl = 'http://192.168.19.48:8080';
  static final ApiWrapper instance = ApiWrapper._();
  ApiWrapper._();

  Dio _defaultDio = Dio();
  var completer = new Completer();

  ProfileApi get profileApi => ProfileApi(_defaultDio, baseUrl: baseUrl);
  ManualApi get manualApi => ManualApi(_defaultDio, baseUrl: baseUrl);

  updateToken(String token) {
    _defaultDio.options.headers['Authorization'] = 'Bearer $token';

    if(!completer.isCompleted) {
      completer.complete();
    }
  }

  Future awaitAuth() {
    return completer.future;
  }
}
