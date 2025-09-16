import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feature/login/bloc/login_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Actividad Flutter',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: GoogleFonts.poppinsTextTheme(),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 16),
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        home: LoginInitialView(),
        routes: {
          '/login': (_) => LoginInitialView(),
          '/loading': (_) => LoginLoadingView(),
          '/error': (_) => LoginErrorView(),
          '/home': (_) => HomeView(),
        },
      ),
    );
  }
}
