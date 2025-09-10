import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUser>(_onLoadUser);
  }

  Future<void> _onLoadUser(LoadUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    try {
      // Leer el JSON desde assets
      final String response = await rootBundle.loadString('assets/user.json');
      final data = json.decode(response);

      emit(UserLoaded(
        nombre: data['nombre'],
        apellido: data['apellido'],
        email: data['email'],
        saldo: (data['saldo'] as num).toDouble(),
      ));
    } catch (e) {
      emit(UserError("Error cargando los datos del usuario: $e"));
    }
  }
}
