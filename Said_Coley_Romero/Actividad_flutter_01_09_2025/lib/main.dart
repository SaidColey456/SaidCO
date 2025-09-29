import 'package:flutter/material.dart';
import 'feature/login/presentation/views/login_initial_view.dart';
import 'feature/login/presentation/views/login_loading_view.dart';
import 'feature/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginInitialView(),
        '/loading': (context) => const LoginLoadingView(),
        '/home': (context) => const HomeView(),
      },
    );
  }
}
