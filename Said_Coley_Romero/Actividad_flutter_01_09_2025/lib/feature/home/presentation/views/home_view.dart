import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            "¡Bienvenido al Home!",
            style: GoogleFonts.lobster(
              fontSize: 34,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.black38,
                  blurRadius: 6,
                  offset: Offset(2, 2),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
