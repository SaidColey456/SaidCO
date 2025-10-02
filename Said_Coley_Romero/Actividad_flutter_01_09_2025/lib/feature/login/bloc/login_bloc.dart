import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
import '../../data/services/api_service.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ApiService apiService;

  LoginBloc(this.apiService) : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) async {
      emit(LoginLoading());

      try {
        final success = await apiService.login(event.username, event.password);

        if (success) {
          emit(LoginSuccess());
        } else {
          emit(LoginFailure(message: "Usuario o contraseña incorrectos"));
        }
      } catch (_) {
        emit(LoginFailure(message: "Error en el servidor, intente más tarde"));
      }
    });
  }
}
