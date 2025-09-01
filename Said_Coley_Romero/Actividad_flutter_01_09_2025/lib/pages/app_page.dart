import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/app_bloc.dart';
import '../bloc/app_event.dart';
import '../bloc/app_state.dart';
import '../views/loading_view.dart';
import '../views/success_view.dart';
import '../views/failure_view.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppBloc()..add(LoadApp()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("App con BLoC"),
          centerTitle: true,
        ),
        body: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            if (state is AppInitial) {
              return const Center(child: Text("Bienvenido 🚀"));
            } else if (state is AppLoading) {
              return const LoadingView();
            } else if (state is AppSuccess) {
              return SuccessView(message: state.message);
            } else if (state is AppFailure) {
              return FailureView(error: state.error);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
