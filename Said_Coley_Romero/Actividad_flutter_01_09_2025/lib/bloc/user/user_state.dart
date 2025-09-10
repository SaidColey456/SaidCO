import 'package:equatable/equatable.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final String nombre;
  final String apellido;
  final String email;
  final double saldo;

  const UserLoaded({
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.saldo,
  });

  @override
  List<Object?> get props => [nombre, apellido, email, saldo];
}

class UserError extends UserState {
  final String message;

  const UserError(this.message);

  @override
  List<Object?> get props => [message];
}
