import 'package:flutter/material.dart';
import 'config/routes.dart';
import 'presentation/theme/app_theme.dart';

class CabinetHannitApp extends StatelessWidget {
  const CabinetHannitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cabinet Hannit',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routerConfig: AppRoutes.router,
    );
  }
}
