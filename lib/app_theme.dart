import 'package:flutter/material.dart';

class AppTheme {
  static const _primaryColor = Color.fromARGB(255, 230, 4, 4);

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.light,
      ),
      fontFamily: 'SF Pro Display',
    );
  }

  static ThemeData get dark {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColor,
        brightness: Brightness.dark,
      ),
      fontFamily: 'SF Pro Display',
    );
  }
}
