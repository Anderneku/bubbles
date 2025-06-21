import 'package:bubbles/pages/authentication/get_started.dart';
import 'package:bubbles/pages/authentication/loginPage.dart';
import 'package:bubbles/pages/authentication/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) => MaterialApp(
        home: GetStarted(), // LoginPage(),  GetStarted(),
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
