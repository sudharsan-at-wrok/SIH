import 'package:flutter/material.dart';
import 'package:medbook/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavBarPage(),
      theme: ThemeData(
        fontFamily: 'Publica Sans Round',
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
