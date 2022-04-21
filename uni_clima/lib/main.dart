import 'package:flutter/material.dart';
import 'package:uni_clima/screens/home.dart';
import 'package:uni_clima/theme/dark_theme.dart';
import 'package:uni_clima/theme/light_theme.dart';


void main() {
  runApp(const UniClima());
}

class UniClima extends StatelessWidget {
  const UniClima({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      title: "UniClima",
      themeMode: ThemeMode.system,
      darkTheme: darkTheme(),
      theme: lightTheme(),
    );
  }
}