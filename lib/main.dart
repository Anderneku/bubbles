import 'package:bubbles/pages/authentication/signupPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(), // LoginPage(),  GetStarted(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
