import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<bool> login(String username, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return username == "admin123@gmail.com" && password == "12345";
  }

  Future<List<Map<String, dynamic>>> fetchUsers() async {
    final response = await http.get(Uri.parse("$baseUrl/users"));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((e) => e as Map<String, dynamic>).toList();
    } else {
      throw Exception("Error al cargar usuarios");
    }
  }

  Future<Map<String, dynamic>> createPost(String title, String body, int userId) async {
    final response = await http.post(
      Uri.parse("$baseUrl/posts"),
      headers: {"Content-Type": "application/json; charset=UTF-8"},
      body: jsonEncode({
        "title": title,
        "body": body,
        "userId": userId,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Error al crear post");
    }
  }
}
