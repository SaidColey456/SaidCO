import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/services/api_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ApiService apiService = ApiService();
  List<Map<String, dynamic>> users = [];
  bool loading = true;
  String? postMessage;

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  Future<void> loadUsers() async {
    try {
      final result = await apiService.fetchUsers();
      setState(() {
        users = result;
        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
      });
    }
  }

  Future<void> createPost() async {
    try {
      final result = await apiService.createPost(
        "Mi titulo",
        "Este es el cuerpo",
        1,
      );
      setState(() {
        postMessage = "Post creado con ID: ${result['id']}";
      });
    } catch (e) {
      setState(() {
        postMessage = "Error al crear post";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            "https://cdn.pixabay.com/photo/2015/01/19/13/51/car-604019_1280.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: createPost,
            child: const Text("Crear Post"),
          ),
          if (postMessage != null) Text(postMessage!),
          Expanded(
            child: loading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(user["id"].toString()),
                        ),
                        title: Text(user["name"] ?? ""),
                        subtitle: Text(user["email"] ?? ""),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
