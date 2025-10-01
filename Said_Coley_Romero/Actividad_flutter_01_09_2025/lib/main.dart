import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/login/bloc/login_bloc.dart';
import 'feature/login/bloc/login_event.dart';
import 'feature/login/bloc/login_state.dart';
import 'feature/login/presentation/views/login_initial_view.dart';
import 'feature/login/presentation/views/login_loading_view.dart';
import 'feature/login/presentation/views/login_error_view.dart';
import 'feature/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: MaterialApp(
        title: 'Flutter Auth Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginInitial) {
              return const LoginInitialView();
            } else if (state is LoginLoading) {
              return const LoginLoadingView();
            } else if (state is LoginSuccess) {
              return HomeView(email: state.email);
            } else if (state is LoginFailure) {
              return LoginErrorView(message: state.message);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
