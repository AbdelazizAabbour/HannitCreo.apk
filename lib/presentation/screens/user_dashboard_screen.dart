import 'package:flutter/material.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Dashboard')),
      body: const Center(child: Text('User Dashboard Screen Placeholder')),
    );
  }
}
