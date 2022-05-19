import 'package:flutter/material.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/theme/dark_theme.dart';
import 'package:todo_app/theme/light_theme.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToDo App",
      home: const Home(),
      themeMode: ThemeMode.system,
      darkTheme: darkTheme(),
      theme: lightTheme(),
    )
  );
}