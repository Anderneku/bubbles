import 'package:flutter/material.dart';

class LoginBubbles extends StatelessWidget {
  const LoginBubbles({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
      ],
    );
  }
}
