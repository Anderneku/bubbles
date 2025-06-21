import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldStyles {
  static TextField login({required String hintText, required bool isPassword}) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: isPassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 10.w),
        isDense: true,
        labelStyle: TextStyle(color: Colors.white, fontSize: 14.sp),
        filled: true,
        fillColor: const Color.fromARGB(255, 9, 9, 9), // very dark grey
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 1.w,
            color: Color.fromARGB(255, 65, 65, 65),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54, fontSize: 14.sp),
      ),
    );
  }
}
