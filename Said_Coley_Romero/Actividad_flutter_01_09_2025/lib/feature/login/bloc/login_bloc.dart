import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());
      await Future.delayed(const Duration(seconds: 2));

      if (event.email == "admin123@gmail.com" && event.password == "12345") {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure("Credenciales incorrectas"));
      }
    });
  }
}
