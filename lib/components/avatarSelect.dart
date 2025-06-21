import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AvatarSelect extends StatefulWidget {
  const AvatarSelect({super.key});

  @override
  State<AvatarSelect> createState() => _AvatarSelectState();
}

class _AvatarSelectState extends State<AvatarSelect> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<File?> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    return File(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () async {
          final image = await _pickImage();
          if (image != null) {
            setState(() {
              _imageFile = image;
            });
          } else {
            if (kDebugMode) {
              print('No image selected.');
            }
          }
        },
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2.w),
          ),
          child: SizedBox(
            width: 120.w,
            height: 120.h,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 9, 9, 9),
              backgroundImage: FileImage(_imageFile ?? File('')),
              child: Icon(
                Icons.person,
                size: 60.r,
                color: Color.fromARGB(255, 125, 50, 245),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
