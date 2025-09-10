import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/dashboard/dashboard_bloc.dart';
import '../bloc/dashboard/dashboard_event.dart';
import '../bloc/dashboard/dashboard_state.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardBloc()..add(LoadDashboard()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tablero de Actividad"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            if (state is DashboardLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DashboardLoaded) {
              final user = state.dashboard.user;
              final transactions = state.dashboard.recentTransactions;
              final notifications = state.dashboard.notifications;

              return SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Bienvenido, ${user.name} 👋",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("Email: ${user.email}"),
                    Text("Saldo: \$${user.balance.toStringAsFixed(2)}"),
                    const SizedBox(height: 20),

                    // Transacciones recientes
                    const Text(
                      "Transacciones recientes",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ...transactions.map((t) => ListTile(
                          title: Text(t.description),
                          subtitle: Text(t.date),
                          trailing: Text(
                            "${t.amount > 0 ? '+' : ''}\$${t.amount}",
                            style: TextStyle(
                              color: t.amount >= 0 ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const Divider(),

                    // Notificaciones
                    const Text(
                      "Notificaciones",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ...notifications.map((n) => ListTile(
                          title: Text(n.title),
                          subtitle: Text(n.message),
                          leading: const Icon(Icons.notifications),
                        )),

                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("Regresar al inicio"),
                    )
                  ],
                ),
              );
            } else if (state is DashboardError) {
              return Center(child: Text(state.message));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
