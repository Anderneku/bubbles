import 'package:bubbles/styles/textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginField extends StatelessWidget {
  final bool isPassword;
  const LoginField({super.key, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: isPassword
          ? [
              Text("Enter your password", style: TextStyle(fontSize: 13.sp)),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                child: TextFieldStyles.login(
                  hintText: "Enter a strong password",
                  isPassword: true,
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
