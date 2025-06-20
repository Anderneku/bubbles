import 'package:bubbles/pages/authentication/loginPage.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  bool _ispressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 0, 13),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: -250,
              child: Image.asset('assets/bubbleImages/bubble.png'),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Image.asset('assets/bubbleImages/bubble6.png', scale: 2.5),
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
              top: 300,
              right: 10,
              child: Image.asset('assets/bubbleImages/bubble4.png', scale: 4),
            ),
            Positioned(
              top: 250,
              right: 90,
              child: Image.asset('assets/bubbleImages/bubble5.png', scale: 2),
            ),
            Positioned(
              bottom: 280,
              left: 200,
              child: Image.asset('assets/bubbleImages/bubble2.png', scale: 4),
            ),
            Positioned(
              bottom: 230,
              left: 20,
              child: Image.asset('assets/bubbleImages/bubble2.png', scale: 6),
            ),
            Positioned(
              bottom: 140,
              left: 50,
              child: Image.asset('assets/bubbleImages/bubble3.png', scale: 2),
            ),
            Positioned(
              bottom: -20,
              right: -250,
              child: Image.asset('assets/bubbleImages/bubble.png'),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 80,
                bottom: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/bubbleImages/bubbleIcon.png', scale: .9),
                  Column(
                    spacing: 1,
                    children: [
                      Text(
                        'Welcome to Bubbles!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontVariations: [FontVariation('wght', 800)],
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ready to pop into your first Bubble?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontVariations: [FontVariation('wght', 500)],
                          color: Color.fromARGB(255, 165, 165, 165),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTapDown: (_) {
                      setState(() {
                        _ispressed = true;
                      });
                    },
                    onTapUp: (_) {
                      setState(() {
                        _ispressed = false;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        color: _ispressed ? Colors.white : Colors.black,
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            color: _ispressed ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
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
