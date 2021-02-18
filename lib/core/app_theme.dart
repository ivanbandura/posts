import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.green,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
