import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/login/bloc/login_bloc.dart';
import 'feature/login/bloc/login_event.dart';
import 'feature/login/bloc/login_state.dart';
import 'feature/data/services/api_service.dart';
import 'feature/login/presentation/views/login_initial_view.dart';
import 'feature/login/presentation/views/login_loading_view.dart';
import 'feature/login/presentation/views/login_error_view.dart';
import 'feature/login/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login API',
      home: BlocProvider(
        create: (_) => LoginBloc(ApiService()), // ✅ ApiService bien importado
        child: const LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomeView()),
          );
        }
      },
      builder: (context, state) {
        if (state is LoginInitial) {
          return const LoginInitialView();
        } else if (state is LoginLoading) {
          return const LoginLoadingView();
        } else if (state is LoginFailure) {
          return LoginErrorView(message: state.message); // ✅ ahora acepta mensaje
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
