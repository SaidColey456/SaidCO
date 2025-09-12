import 'package:flutter/material.dart';

class LoginErrorView extends StatelessWidget {
  final String message;

  const LoginErrorView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Error: $message",
              style: const TextStyle(color: Colors.red, fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Reintentar"),
            ),
          ],
        ),
      ),
    );
  }
}
