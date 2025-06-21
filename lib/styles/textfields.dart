import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldStyles {
  static TextField login({
    required String hintText,
    required bool isPassword,
    Widget? suffix,
  }) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 10.w),
        isDense: true,
        labelStyle: TextStyle(color: Colors.white, fontSize: 14.sp),
        filled: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 32, 32, 32),
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 125, 50, 245),
            width: 2,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54, fontSize: 14.sp),
        suffixIcon: suffix,
      ),
    );
  }
}
