import 'package:flutter/material.dart';

class ServicesProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<dynamic> _services = [];
  List<dynamic> get services => _services;

  Future<void> fetchServices() async {
    _isLoading = true;
    notifyListeners();
    // Fetch from API
    _isLoading = false;
    notifyListeners();
  }
}
