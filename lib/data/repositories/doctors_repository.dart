import '../../core/api/dio_client.dart';
import '../../config/api_config.dart';
import '../models/doctor_model.dart';

class DoctorsRepository {
  final DioClient _dioClient;

  DoctorsRepository(this._dioClient);

  Future<List<DoctorModel>> getDoctors() async {
    try {
      final response = await _dioClient.dio.get(ApiConfig.doctors);
      if (response.data is List) {
        return (response.data as List)
            .map((x) => DoctorModel.fromJson(x))
            .toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  Future<DoctorModel> getDoctorDetails(int id) async {
    try {
      final response = await _dioClient.dio.get("${ApiConfig.doctors}/$id");
      return DoctorModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
