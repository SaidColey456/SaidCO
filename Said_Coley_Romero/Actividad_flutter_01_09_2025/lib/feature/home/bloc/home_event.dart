abstract class HomeEvent {}

class LoadHomeEvent extends HomeEvent {
  final String userName;

  LoadHomeEvent(this.userName);
}
