import '../../core/api/dio_client.dart';
import '../../config/api_config.dart';
import '../models/service_model.dart';

class ServicesRepository {
  final DioClient _dioClient;

  ServicesRepository(this._dioClient);

  Future<List<ServiceModel>> getServices() async {
    try {
      final response = await _dioClient.dio.get(ApiConfig.services);
      if (response.data is List) {
        return (response.data as List)
            .map((x) => ServiceModel.fromJson(x))
            .toList();
      }
      return [];
    } catch (e) {
      rethrow;
    }
  }

  Future<void> toggleServiceSelection(int id) async {
    try {
      await _dioClient.dio.post("${ApiConfig.services}/$id/toggle-selection");
    } catch (e) {
      rethrow;
    }
  }
}
