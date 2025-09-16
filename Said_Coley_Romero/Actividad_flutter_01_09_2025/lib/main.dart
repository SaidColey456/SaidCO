import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/login/bloc/login_bloc.dart';
import 'feature/login/presentation/views/login_initial_view.dart';
import 'feature/login/presentation/views/login_loading_view.dart';
import 'feature/login/presentation/views/login_error_view.dart';
import 'feature/home/presentation/views/home_view.dart';
import 'feature/home/bloc/home_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoginBloc()),
        BlocProvider(create: (_) => HomeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exotic Flutter App',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.deepPurple,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            titleTextStyle: GoogleFonts.lobster(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.poppins(fontSize: 16),
              elevation: 8,
            ),
          ),
        ),
        home: const LoginInitialView(),
        routes: {
          '/login': (_) => const LoginInitialView(),
          '/loading': (_) => const LoginLoadingView(),
          '/error': (_) => const LoginErrorView(),
          '/home': (_) => const HomeView(),
        },
      ),
    );
  }
}
