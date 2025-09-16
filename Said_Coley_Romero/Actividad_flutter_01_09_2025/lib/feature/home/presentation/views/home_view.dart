import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio", style: GoogleFonts.lobster(fontSize: 26)),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.deepPurpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.deepPurple, size: 40),
                title: Text(
                  "Perfil",
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                subtitle: Text("Configura tu información personal"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.deepPurple, size: 40),
                title: Text(
                  "Configuración",
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                subtitle: Text("Personaliza la aplicación"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.deepPurple, size: 40),
                title: Text(
                  "Cerrar sesión",
                  style: GoogleFonts.poppins(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
