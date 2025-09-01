import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<LoadApp>((event, emit) async {
      emit(AppLoading());
      await Future.delayed(const Duration(seconds: 2));

      // Aquí puedes simular éxito o error
      final success = true;
      if (success) {
        emit(const AppSuccess("La app cargó correctamente 🚀"));
      } else {
        emit(const AppFailure("Error al cargar la app ❌"));
      }
    });

    on<ResetApp>((event, emit) {
      emit(AppInitial());
    });
  }
}
