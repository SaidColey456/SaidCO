import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginErrorView extends StatelessWidget {
  const LoginErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 80, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              "Credenciales inválidas",
              style: GoogleFonts.poppins(
                  fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.red.shade600,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              ),
              child: Text("Reintentar", style: GoogleFonts.poppins(fontSize: 18)),
            )
          ],
        ),
      ),
    );
  }
}
