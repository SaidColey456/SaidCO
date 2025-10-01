import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/login_bloc.dart';
import '../../bloc/login_event.dart';

class LoginInitialView extends StatefulWidget {
  const LoginInitialView({super.key});

  @override
  State<LoginInitialView> createState() => _LoginInitialViewState();
}

class _LoginInitialViewState extends State<LoginInitialView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                final email = _emailController.text.trim();
                final password = _passwordController.text.trim();
                context.read<LoginBloc>().add(
                      LoginSubmitted(email: email, password: password),
                    );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
