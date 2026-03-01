import 'package:dio/dio.dart';
import '../../config/api_config.dart';
import '../../core/api/dio_client.dart';
import '../models/user_model.dart';

class AuthRepository {
  final DioClient _dioClient;

  AuthRepository(this._dioClient);

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dioClient.dio.post(
        ApiConfig.login,
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return {
          'token': response.data['token'],
          'user': UserModel.fromJson(response.data['user']),
        };
      }
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register(Map<String, dynamic> data) async {
    try {
      await _dioClient.dio.post(ApiConfig.register, data: data);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> adminLogin(String email, String password) async {
    try {
      final response = await _dioClient.dio.post(
        ApiConfig.adminLogin,
        data: {'email': email, 'password': password},
      );
      return response.statusCode == 200;
    } catch (e) {
      rethrow;
    }
  }
}
