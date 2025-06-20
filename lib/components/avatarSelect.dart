import 'package:flutter/material.dart';

class AvatarSelect extends StatelessWidget {
  const AvatarSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.purpleAccent, width: 10),
          ),
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromARGB(255, 9, 9, 9),
            child: Icon(Icons.camera_alt, size: 55, color: Colors.purpleAccent),
          ),
        ),
      ),
    );
  }
}
