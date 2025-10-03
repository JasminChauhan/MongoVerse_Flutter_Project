import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://mongoverse-flutter-project.onrender.com/api"; // Updated for Android emulator

  Future<List<dynamic>> getModules() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/MV_Modules"));
      print("API Response: ${response.body}"); // For debugging
      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        // Extract the 'Data' array
        return decoded['Data'] as List<dynamic>;
      } else {
        throw Exception("Failed to load modules: ${response.statusCode} ${response.reasonPhrase}");
      }
    } catch (e) {
      print("Error fetching modules: $e");
      throw Exception("Failed to load modules: $e");
    }
  }

  Future<List<dynamic>> getTopics() async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/MV_Topics"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception("Failed to load topics: ${response.statusCode} ${response.reasonPhrase}");
      }
    } catch (e) {
      print("Error fetching topics: $e");
      throw Exception("Failed to load topics: $e");
    }
  }

  Future<Map<String, dynamic>> getTopicsById(int id) async {
    try {
      final response = await http.get(Uri.parse("$baseUrl/MV_Topics/$id"));
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception("Failed to load topics: ${response.statusCode} ${response.reasonPhrase}");
      }
    } catch (e) {
      print("Error fetching topics by id: $e");
      throw Exception("Failed to load topics by id: $e");
    }
  }
}