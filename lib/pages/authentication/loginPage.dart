import 'package:bubbles/components/loginfields.dart';
import 'package:bubbles/pages/authentication/signupPage.dart';
import 'package:bubbles/styles/animatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 3, 0, 5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoginField(isPassword: false),
                      SizedBox(height: 24.h),
                      LoginField(isPassword: true),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13.sp,
                          color: Color.fromARGB(255, 125, 50, 245),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  AnimatedButton(
                    pageBuilder: (context) => SignupPage(),
                    text: "Login",
                    f_size: 15,
                    bgColor: Color.fromARGB(255, 125, 50, 245),
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1, endIndent: 10)),
                      Text(
                        "Or",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 165, 165, 165),
                        ),
                      ),
                      Expanded(child: Divider(thickness: 1, indent: 10)),
                    ],
                  ),

                  SizedBox(height: 15.h),
                  GestureDetector(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: double.infinity,
                      height: 53.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromARGB(255, 9, 9, 9),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/otherIcons/googleLogo.png',
                              width: 30.w,
                              height: 30.h,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13.sp,
                          color: Colors.white54,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Create an account",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13.sp,
                            color: Color.fromARGB(255, 125, 50, 245),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
