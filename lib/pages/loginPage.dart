import 'package:bubbles/components/loginfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 0, 13),
      body: Stack(
        children: [
          Positioned(
            top: 150,
            left: -250,
            child: Image.asset('assets/bubbleImages/bubble.png'),
          ),

          Positioned(
            top: -150,
            right: -250,
            child: Image.asset('assets/bubbleImages/bubble.png'),
          ),

          // White Circle Icon
          Positioned(
            bottom: -200,
            left: -290,
            child: Image.asset('assets/bubbleImages/bubble.png'),
          ),

          Positioned(
            bottom: -20,
            right: -250,
            child: Image.asset('assets/bubbleImages/bubble.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LoginField(isPassword: false),
                          SizedBox(height: 20),
                          LoginField(isPassword: true),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              color: Color.fromARGB(255, 249, 61, 255),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: double.infinity,
                          height: 60,
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
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Or",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 165, 165, 165),
                        ),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: double.infinity,
                          height: 60,
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
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: Colors.white54,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
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
        ],
      ),
    );
  }
}
