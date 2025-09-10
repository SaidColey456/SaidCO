import 'package:flutter_bloc/flutter_bloc.dart';


abstract class AppEvent {}

class AppStarted extends AppEvent {}

class AppLoaded extends AppEvent {}

class AppError extends AppEvent {}

abstract class AppState {}

class AppInitial extends AppState {}

class AppSuccess extends AppState {}

class AppFailure extends AppState {}

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppStarted>((event, emit) {
      emit(AppInitial());
    });

    on<AppLoaded>((event, emit) {
      emit(AppSuccess());
    });

    on<AppError>((event, emit) {
      emit(AppFailure());
    });
  }
}
