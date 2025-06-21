import 'package:bubbles/pages/authentication/loginPage.dart';
import 'package:bubbles/pages/authentication/signupPage.dart';
import 'package:bubbles/styles/animatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true); // Makes it rotate forever
    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 0, 5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // vertical centering
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotationTransition(
                turns: _controller,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: SvgPicture.asset('assets/bubbleImages/bubbleIcon.svg'),
                ),
              ),

              SizedBox(height: 33.h), // spacing between image and text
              Column(
                // spacing: 1, // 'spacing' is not a valid property for Column
                children: [
                  RichText(
                    softWrap: true,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 36.sp,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Bubbles!',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 36.sp,
                            color: Color.fromARGB(255, 125, 50, 245),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Ready to pop into your first Bubble?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Inter',
                      fontVariations: [FontVariation('wght', 500)],
                      color: Color.fromARGB(255, 165, 165, 165),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 91.h), // spacing between text and button
              AnimatedButton(
                pageBuilder: (context) => LoginPage(),
                bgColor: Color.fromARGB(255, 125, 50, 245),
                text: "Login",
              ),
              SizedBox(height: 20.h), // spacing between text and button
              AnimatedButton(
                pageBuilder: (context) => SignupPage(),
                bgColor: Colors.white,
                txtColor: Colors.black,
                text: "Sign Up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
