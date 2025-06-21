import 'package:bubbles/components/avatarSelect.dart';
import 'package:bubbles/components/loginfields.dart';
import 'package:bubbles/pages/authentication/loginPage.dart';
import 'package:bubbles/styles/animatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
              SizedBox(height: 30.h),
              AvatarSelect(),
              SizedBox(height: 30.h),
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

                  AnimatedButton(
                    pageBuilder: (context) => LoginPage(),
                    text: "Signup",
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
                              "Sign up with Google",
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
                        "Already have an account?",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13.sp,
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(width: 0),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
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

// import 'package:bubbles/components/avatarSelect.dart';
// import 'package:bubbles/components/backgroundBubbles/loginBubbles.dart';
// import 'package:bubbles/components/loginfields.dart';
// import 'package:bubbles/pages/authentication/loginPage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SignupPage extends StatelessWidget {
//   const SignupPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 7, 0, 13),
//       body: Stack(
//         children: [
//           LoginBubbles(),
//           Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 54.h),

//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Create an',
//                     style: TextStyle(
//                       fontSize: 36.sp,
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w800,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Text(
//                     'account',
//                     style: TextStyle(
//                       fontSize: 36.sp,
//                       fontFamily: 'Inter',
//                       fontWeight: FontWeight.w800,
//                       color: const Color.fromARGB(255, 249, 61, 255),
//                     ),
//                   ),
//                   SizedBox(height: 30.h),
//                   AvatarSelect(),
//                   SizedBox(height: 30.h),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       LoginField(isPassword: false),
//                       SizedBox(height: 24.h),
//                       LoginField(isPassword: true),
//                     ],
//                   ),
//                   SizedBox(height: 48.h),
//                   GestureDetector(
//                     onTap: () {
//                       // Handle sign up logic here
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 200),
//                       width: double.infinity,
//                       height: 53.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16),
//                         gradient: const LinearGradient(
//                           colors: [Color(0xffff04c9), Color(0xff5e3dff)],
//                           stops: [0.25, 0.75],
//                           begin: Alignment.centerRight,
//                           end: Alignment.centerLeft,
//                         ),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "Sign Up",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'Inter',
//                             fontSize: 20.sp,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 24.h),
//                   GestureDetector(
//                     onTap: () {
//                       // Handle Google sign up logic here
//                     },
//                     child: AnimatedContainer(
//                       duration: const Duration(milliseconds: 200),
//                       width: double.infinity,
//                       height: 53.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16),
//                         color: const Color.fromARGB(255, 9, 9, 9),
//                       ),
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/otherIcons/googleLogo.png',
//                               width: 22.h,
//                               height: 22.h,
//                             ),
//                             SizedBox(width: 10.w),
//                             Text(
//                               "Sign up with Google",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontFamily: 'Inter',
//                                 fontSize: 20.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 14.h),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Already have an account?",
//                         style: TextStyle(
//                           fontFamily: 'Inter',
//                           fontSize: 13.sp,
//                           color: Colors.white54,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => LoginPage(),
//                             ),
//                           );
//                         },
//                         child: Text(
//                           "Log in",
//                           style: TextStyle(
//                             fontFamily: 'Inter',
//                             fontSize: 13.sp,
//                             color: Color.fromARGB(255, 249, 61, 255),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
