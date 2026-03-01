import 'package:dio/dio.dart';
import '../../config/api_config.dart';
import '../storage/local_storage.dart';
import 'package:get_it/get_it.dart';

class DioClient {
  final Dio _dio = Dio();
  final LocalStorage _storage = GetIt.I<LocalStorage>();

  DioClient() {
    _dio.options.baseUrl = ApiConfig.baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 15);
    _dio.options.receiveTimeout = const Duration(seconds: 15);

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _storage.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          if (e.response?.statusCode == 401) {
            // Handle unauthorized - maybe logout or refresh token
            _storage.deleteToken();
          }
          return handler.next(e);
        },
      ),
    );
  }

  Dio get dio => _dio;
}
