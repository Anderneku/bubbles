import 'package:bubbles/components/backgroundBubbles/loginBubbles.dart';
import 'package:bubbles/components/loginfields.dart';
import 'package:bubbles/pages/authentication/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 0, 13),
      body: Stack(
        children: [
          LoginBubbles(),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 54.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login to your',
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'account',
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 249, 61, 255),
                    ),
                  ),
                  SizedBox(height: 59.h),
                  Center(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoginField(isPassword: false),
                            SizedBox(height: 24.h),
                            LoginField(isPassword: true),
                          ],
                        ),
                        SizedBox(height: 22.h),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13.sp,
                                color: Color.fromARGB(255, 249, 61, 255),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 22.h),
                        GestureDetector(
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            width: double.infinity,
                            height: 53.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                colors: [Color(0xffff04c9), Color(0xff5e3dff)],
                                stops: [0.25, 0.75],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                              ),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          "Or",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 165, 165, 165),
                          ),
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
                                    width: 22.w,
                                    height: 22.h,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    "Sign in with Google",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontSize: 20.sp,
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
                                  color: Color.fromARGB(255, 249, 61, 255),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
