import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 0, 13),
      body: Center(
        child: Stack(
          children: [
            Positioned(top: 150, left: -200, child: Image.asset('bubble.png')),
            Positioned(
              top: -150,
              right: -250,
              child: Image.asset('bubble.png'),
            ),
            Positioned(
              bottom: -200,
              left: -250,
              child: Image.asset('bubble.png'),
            ),
            Positioned(
              bottom: 280,
              left: 200,
              child: Image.asset('bubble2.png', scale: 4),
            ),
            Positioned(
              bottom: 230,
              left: 20,
              child: Image.asset('bubble2.png', scale: 6),
            ),
            Positioned(
              bottom: 140,
              left: 50,
              child: Image.asset('bubble3.png', scale: 2),
            ),
            Positioned(
              bottom: -20,
              right: -250,
              child: Image.asset('bubble.png'),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
