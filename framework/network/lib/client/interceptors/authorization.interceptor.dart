import 'package:dio/dio.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      // adds the access-token with the header
      options.headers['Authorization'] = 'Bearer <token>';
    }
    handler.next(options); // continue with the request
  }

  bool _needAuthorizationHeader(RequestOptions options) => false;
}
