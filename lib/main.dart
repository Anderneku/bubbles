import 'package:bubbles/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // GetStarted(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
