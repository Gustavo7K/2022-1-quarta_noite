import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: Colors.purple,
        secondary: Colors.orange,
      ),
      appBarTheme: const AppBarTheme(color: Colors.purple),
      scaffoldBackgroundColor: Colors.grey[100],
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.orange));
}
