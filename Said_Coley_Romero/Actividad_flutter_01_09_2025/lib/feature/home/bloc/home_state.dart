abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  final String userName;

  HomeLoaded({required this.userName});
}
