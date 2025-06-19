import 'package:flutter/material.dart';

class TextFieldStyles {
  static TextField login({required String hintText, required bool isPassword}) {
    return TextField(
      style: const TextStyle(color: Colors.white, height: 2),
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 9, 9, 9), // very dark grey
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
