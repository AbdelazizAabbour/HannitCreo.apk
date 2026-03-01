import 'package:flutter/material.dart';

class AppointmentsProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<dynamic> _appointments = [];
  List<dynamic> get appointments => _appointments;

  Future<void> fetchAppointments() async {
    _isLoading = true;
    notifyListeners();
    // Fetch from API
    _isLoading = false;
    notifyListeners();
  }
}
