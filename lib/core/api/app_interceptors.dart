import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_workapp/app_injector.dart' as di;
import 'package:test_workapp/core/utils/constants/app_constants.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options
      ..headers[AppConstants.contentType] = AppConstants.applicationJson
      ..headers[AppConstants.authorization] = di
                  .sl<SharedPreferences>()
                  .getString(AppConstants.accessToken) !=
              null
          ? '${AppConstants.bearer} ${di.sl<SharedPreferences>().getString(AppConstants.accessToken)}'
          : null
      ..headers[AppConstants.acceptLanguage] = AppConstants.enCode;

    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    super.onError(err, handler);
  }
}
