import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';
import '../../models/dashboard.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardLoading()) {
    on<LoadDashboard>(_onLoadDashboard);
  }

  Future<void> _onLoadDashboard(
      LoadDashboard event, Emitter<DashboardState> emit) async {
    try {
      final response = await rootBundle.loadString('assets/dashboard.json');
      final data = json.decode(response);
      final dashboard = Dashboard.fromJson(data);

      emit(DashboardLoaded(dashboard));
    } catch (e) {
      emit(DashboardError("Error al cargar dashboard: $e"));
    }
  }
}
