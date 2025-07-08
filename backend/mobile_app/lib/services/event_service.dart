import 'api_service.dart';

class EventService {
  static Future<List<dynamic>> getAllEvents() async {
    final data = await ApiService.get("/events");
    return data['events'] ?? [];
  }

  static Future<bool> addEvent(Map<String, dynamic> eventData) async {
    final result = await ApiService.post("/events/add", eventData);
    return result['success'] == true;
  }
}

