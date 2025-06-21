import 'package:bubbles/styles/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginField extends StatefulWidget {
  final bool isPassword;

  const LoginField({super.key, required this.isPassword});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.isPassword
          ? [
              Text("Enter your password", style: TextStyle(fontSize: 13.sp)),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                child: TextFieldStyles.login(
                  hintText: "Enter a strong password",
                  isPassword: _obscureText,
                  suffix: IconButton(
                    icon: Icon(
                      size: 20.sp,
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ]
          : [
              Text("Your email address", style: TextStyle(fontSize: 13.sp)),
              SizedBox(height: 5.h),
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
