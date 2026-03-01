import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primary = Color(0xFFC23464);
  static const Color primaryLight = Color(0xFFD94D7A);
  static const Color primaryDark = Color(0xFF9E2A52);
  
  // Secondary / Accent
  static const Color secondary = Color(0xFFDA0067);
  static const Color accent = Color(0xFF7600DA);
  static const Color accentLight = Color(0xFF9333EA);
  static const Color accentDark = Color(0xFF5B00A8);

  // Neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightBG = Color(0xFFF8F7FA);
  static const Color lightGray = Color(0xFFF3F2F5);
  static const Color neutralGray = Color(0xFFB0ABB2);
  static const Color mediumGray = Color(0xFF8A8590);
  static const Color darkGray = Color(0xFF4A4550);
  static const Color dark = Color(0xFF1A1520);
  static const Color black = Color(0xFF0D0A10);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [primary, accent],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient heroGradient = LinearGradient(
    colors: [primary, accent, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
