import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/login/bloc/login_bloc.dart';
import 'feature/login/presentation/views/login_initial_view.dart';
import 'feature/home/bloc/home_bloc.dart';
import 'feature/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (_) => LoginBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Login App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // 👇 Cambia la pantalla inicial si lo deseas
        home: const LoginInitialView(),
        routes: {
          '/login': (context) => const LoginInitialView(),
          '/home': (context) => const HomeView(),
        },
      ),
    );
  }
}
