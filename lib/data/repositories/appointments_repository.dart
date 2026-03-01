import '../../core/api/dio_client.dart';
import '../../config/api_config.dart';
import '../models/appointment_model.dart';

class AppointmentsRepository {
  final DioClient _dioClient;

  AppointmentsRepository(this._dioClient);

  Future<List<AppointmentModel>> getUserAppointments() async {
    try {
      final response = await _dioClient.dio.get(ApiConfig.userAppointments);
      if (response.data is List) {
        return (response.data as List)
            .map((x) => AppointmentModel.fromJson(x))
            .toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  Future<void> bookAppointment(Map<String, dynamic> data) async {
    try {
      await _dioClient.dio.post(ApiConfig.appointments, data: data);
    } catch (e) {
      rethrow;
    }
  }
}
