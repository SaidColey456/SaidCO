import 'package:equatable/equatable.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppSuccess extends AppState {
  final String message;
  const AppSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class AppFailure extends AppState {
  final String error;
  const AppFailure(this.error);

  @override
  List<Object> get props => [error];
}
