import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/services/api_service.dart';

// ----------------- Eventos -----------------
abstract class HomeEvent {}

class FetchPosts extends HomeEvent {}

class FetchUsers extends HomeEvent {}

// ----------------- Estados -----------------
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<dynamic> data;
  HomeLoaded(this.data);
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}

// ----------------- Bloc -----------------
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiService apiService;

  HomeBloc(this.apiService) : super(HomeInitial()) {
    on<FetchPosts>((event, emit) async {
      emit(HomeLoading());
      try {
        final posts = await apiService.fetchPosts();
        emit(HomeLoaded(posts));
      } catch (e) {
        emit(HomeError("Error al cargar posts: $e"));
      }
    });

    on<FetchUsers>((event, emit) async {
      emit(HomeLoading());
      try {
        final users = await apiService.fetchUsers();
        emit(HomeLoaded(users));
      } catch (e) {
        emit(HomeError("Error al cargar usuarios: $e"));
      }
    });
  }
}
