import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginLoadingView extends StatelessWidget {
  const LoginLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF7F00FF),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 6,
        ),
      ),
    );
  }
}
