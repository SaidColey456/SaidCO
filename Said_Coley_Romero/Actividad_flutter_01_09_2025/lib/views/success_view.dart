import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/app_bloc.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppBloc>().state;

    if (state is AppSuccess) {
      final user = state.user;
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre: ${user.nombre} ${user.apellido}"),
            Text("Email: ${user.email}"),
            Text("Teléfono: ${user.telefono}"),
            Text("Saldo: \$${user.saldo.toStringAsFixed(2)}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<AppBloc>().add(AppStarted());
              },
              child: const Text("Volver al inicio"),
            ),
          ],
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
