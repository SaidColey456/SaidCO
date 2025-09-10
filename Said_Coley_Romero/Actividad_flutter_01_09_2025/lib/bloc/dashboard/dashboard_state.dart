import '../../models/dashboard.dart';

abstract class DashboardState {}

class DashboardLoading extends DashboardState {}

class DashboardLoaded extends DashboardState {
  final Dashboard dashboard;
  DashboardLoaded(this.dashboard);
}

class DashboardError extends DashboardState {
  final String message;
  DashboardError(this.message);
}
