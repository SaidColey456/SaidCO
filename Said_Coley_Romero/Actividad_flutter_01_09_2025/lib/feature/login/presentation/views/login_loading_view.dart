import 'package:flutter/material.dart';

class LoginLoadingView extends StatelessWidget {
  const LoginLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF7F0FF),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.deepPurple,
          strokeWidth: 6,
        ),
      ),
    );
  }
}
