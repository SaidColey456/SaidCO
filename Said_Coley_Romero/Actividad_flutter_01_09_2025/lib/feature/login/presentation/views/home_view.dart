import 'package:flutter/material.dart';
import '../../data/services/api_service.dart';
import '../../data/models/user.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<List<User>> _usersFuture;
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _usersFuture = apiService.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usuarios"),
      ),
      body: Column(
        children: [
          // Imagen arriba 👇
          Image.network(
            "https://cdn.pixabay.com/photo/2015/01/19/13/51/car-604019_1280.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Center(child: Text("Error al cargar la imagen"));
            },
          ),
          const SizedBox(height: 10),

          // Lista de usuarios 👇
          Expanded(
            child: FutureBuilder<List<User>>(
              future: _usersFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("No se encontraron usuarios"));
                }

                final users = snapshot.data!;
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(user.name[0]),
                      ),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
