import 'package:dio/dio.dart';

import 'interceptors/authorization.interceptor.dart';
import 'interceptors/logger.interceptor.dart';

final class DioClient {
  Dio dio() => Dio(
        BaseOptions(
          baseUrl: _baseUrl,
          connectTimeout: _connectTimeout,
          receiveTimeout: _receiveTimeout,
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'accept': 'application/json',
          },
          queryParameters: {
            'language': 'es-ES',
          },
          responseType: ResponseType.json,
        ),
      )..interceptors.addAll([
          AuthorizationInterceptor(),
          LoggerInterceptor(),
        ]);

  static const String _baseUrl = 'https://yesno.wtf';
  static const Duration _connectTimeout = Duration(milliseconds: 5000);
  static const Duration _receiveTimeout = Duration(milliseconds: 3000);
}
