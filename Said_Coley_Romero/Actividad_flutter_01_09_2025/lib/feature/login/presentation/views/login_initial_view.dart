import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../bloc/login_bloc.dart';
import '../../bloc/login_event.dart';
import '../../bloc/login_state.dart';

class LoginInitialView extends StatefulWidget {
  const LoginInitialView({Key? key}) : super(key: key);

  @override
  State<LoginInitialView> createState() => _LoginInitialViewState();
}

class _LoginInitialViewState extends State<LoginInitialView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            Navigator.pushNamed(context, '/loading');
          } else if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (state is LoginFailure) {
            Navigator.pushNamed(context, '/error');
          }
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFFD1C4E9)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.lock_outline,
                          size: 80, color: Colors.deepPurple),
                      const SizedBox(height: 20),
                      Text(
                        "Iniciar Sesión",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(height: 30),
                      _buildTextField(
                        controller: emailController,
                        hint: "Correo electrónico",
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        controller: passwordController,
                        hint: "Contraseña",
                        obscure: true,
                        icon: Icons.lock_outline,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<LoginBloc>().add(
                                  LoginSubmitted(
                                    emailController.text,
                                    passwordController.text,
                                  ),
                                );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          child: Text(
                            "Ingresar",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: GoogleFonts.poppins(color: Colors.black87),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.deepPurple),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.black54),
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepPurple.shade200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.deepPurple.shade100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
        ),
      ),
    );
  }
}
