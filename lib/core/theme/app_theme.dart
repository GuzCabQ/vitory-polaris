import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: const Color(0xFF4CAF50), // Verde VITORY
      brightness: Brightness.light,
    );
  }
}
