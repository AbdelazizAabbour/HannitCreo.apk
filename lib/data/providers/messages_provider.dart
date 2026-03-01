import 'package:flutter/material.dart';

class MessagesProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final List<dynamic> _messages = [];
  List<dynamic> get messages => _messages;

  Future<void> fetchMessages() async {
    _isLoading = true;
    notifyListeners();
    // Fetch from API
    _isLoading = false;
    notifyListeners();
  }
}
