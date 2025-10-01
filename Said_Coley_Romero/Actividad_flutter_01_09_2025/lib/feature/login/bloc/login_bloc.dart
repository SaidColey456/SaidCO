import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
      LoginSubmitted event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    await Future.delayed(const Duration(seconds: 2)); // simulamos login

    if (event.email == "admin123@gmail.com" && event.password == "12345") {
      emit(LoginSuccess(event.email));
    } else {
      emit(const LoginFailure("Credenciales incorrectas"));
    }
  }
}
