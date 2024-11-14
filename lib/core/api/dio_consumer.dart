import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_workapp/core/api/status_code.dart';
import '../errors/exceptions.dart';
import 'api_consumer.dart';
import 'app_interceptors.dart';
import 'end_points.dart';
import 'package:test_workapp/app_injector.dart' as di;

class DioConsumer implements ApiConsumer {
  final Dio client;

  DioConsumer({required this.client}) {
    // ignore: deprecated_member_use
    (client.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    client.options
      ..baseUrl = Endpoints.baseUrl
      ..responseType = ResponseType.json
      ..followRedirects = false;

    client.interceptors.add(di.sl<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
      //client.interceptors.add(di.getIt<LogInterceptor>());
    }
  }

  @override
  Future delete(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.delete(
        path,
        queryParameters: queryParameters,
      );
      return _handleResponseJson(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.get(path, queryParameters: queryParameters);
      return _handleResponseJson(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future post(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await client.post(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future put(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await client.put(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future patch(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await client.patch(
        path,
        queryParameters: queryParameters,
        data: isFormData ? FormData.fromMap(body!) : body,
      );
      return _handleResponseJson(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  dynamic _handleResponseJson(Response response) {
    return response.data;
  }

  dynamic _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw const FetchDataException();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw BadRequestException(jsonEncode(error.response?.data));
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw UnauthorizedException(jsonEncode(error.response?.data));
          case StatusCode.notFound:
            throw NotFoundException(jsonEncode(error.response?.data));
          case StatusCode.conflict:
            throw ConflictException(jsonEncode(error.response?.data));
          case StatusCode.unProcessableEntity:
            throw UnProcessableEntityException(
                jsonEncode(error.response?.data));
          case StatusCode.internalServerError:
            throw const InternalServerErrorException();
          default:
            throw const FetchDataException();
        }
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.unknown:
        throw const NoInternetException();
      case DioExceptionType.badCertificate:
        break;
      case DioExceptionType.connectionError:
        break;
    }
  }
}
