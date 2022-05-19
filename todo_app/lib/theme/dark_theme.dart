import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: Colors.black,
        secondary: Colors.orange,
      ),
      appBarTheme: const AppBarTheme(color: Colors.white12),
      scaffoldBackgroundColor: Colors.grey[700],
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.white70));
}
