import 'package:bubbles/styles/textfields.dart';
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final bool isPassword;
  const LoginField({super.key, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: isPassword
          ? [
              Text("Enter your address"),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: TextFieldStyles.login(
                  hintText: "Enter a strong password",
                  isPassword: true,
                ),
              ),
            ]
          : [
              Text("Your email address"),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: TextFieldStyles.login(
                  hintText: "example@gmail.com",
                  isPassword: false,
                ),
              ),
            ],
    );
  }
}
