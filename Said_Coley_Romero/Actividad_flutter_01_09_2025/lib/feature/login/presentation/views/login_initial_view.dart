import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/login_bloc.dart';
import '../../bloc/login_event.dart';

class LoginInitialView extends StatelessWidget {
  const LoginInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: usernameController, decoration: const InputDecoration(labelText: "Usuario")),
            TextField(controller: passwordController, decoration: const InputDecoration(labelText: "Contraseña"), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<LoginBloc>().add(
                      LoginButtonPressed(
                        usernameController.text,
                        passwordController.text,
                      ),
                    );
              },
              child: const Text("Iniciar sesión"),
            ),
          ],
        ),
      ),
    );
  }
}
