import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/user.dart';


abstract class AppEvent {}

class AppStarted extends AppEvent {}

class AppLoaded extends AppEvent {}

class AppError extends AppEvent {}

abstract class AppState {}

class AppInitial extends AppState {}

class AppSuccess extends AppState {
  final User user;
  AppSuccess(this.user);
}

class AppFailure extends AppState {}

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppStarted>((event, emit) {
      emit(AppInitial());
    });

    on<AppLoaded>((event, emit) async {
      try {
        final data = await rootBundle.loadString('assets/user.json');
        final jsonMap = json.decode(data);
        final user = User.fromJson(jsonMap);
        emit(AppSuccess(user));
      } catch (e) {
        emit(AppFailure());
      }
    });

    on<AppError>((event, emit) {
      emit(AppFailure());
    });
  }
}
