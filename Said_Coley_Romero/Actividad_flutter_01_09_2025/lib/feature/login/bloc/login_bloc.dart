import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());
      await Future.delayed(const Duration(seconds: 2)); // simulando login
      if (event.username == "said" && event.password == "1234") {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure("Usuario o contraseña incorrectos"));
      }
    });
  }
}
