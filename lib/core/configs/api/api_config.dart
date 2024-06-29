import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:poke_app/core/configs/api/api.dart';

bool refreshTokenFailed = false;

class Api {
  Api._();
  static final Api _instance = Api._();
  static Dio get dio => _instance._dio;

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: EnvironmentConfig.apiBaseUrl,
      followRedirects: false,
      // will not throw errors
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
    ),
  )..interceptors.add(
      AwesomeDioInterceptor(
        logRequestTimeout: false,
      ),
    );
}

class ResponseInterceptor extends Interceptor {
  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) =>
      handler.next(response);
}
