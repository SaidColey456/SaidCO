import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  /// Simulación de login usando POST en /posts
  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/posts"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": username,
        "password": password,
      }),
    );

    if (response.statusCode == 201) {
      return {"status": "success", "data": jsonDecode(response.body)};
    } else {
      return {"status": "error", "message": "Credenciales inválidas"};
    }
  }

  /// Obtener lista de usuarios (GET /users)
  Future<List<dynamic>> fetchUsers() async {
    final response = await http.get(Uri.parse("$baseUrl/users"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Error al obtener usuarios");
    }
  }
}
