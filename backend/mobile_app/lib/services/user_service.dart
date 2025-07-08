import 'api_service.dart';

class UserService {
  static Future<Map<String, dynamic>> getUser(String userId) async {
    final data = await ApiService.get("/users/$userId");
    return data;
  }

  static Future<bool> updateProfile(String userId, Map<String, dynamic> updatedData) async {
    final result = await ApiService.post("/users/$userId/update", updatedData);
    return result['success'] == true;
  }
}

