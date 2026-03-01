import 'package:flutter/material.dart';

class AdminProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  dynamic _stats;
  dynamic get stats => _stats;

  Future<void> fetchAdminDashboard() async {
    _isLoading = true;
    notifyListeners();
    // Fetch from API
    _isLoading = false;
    notifyListeners();
  }
}
