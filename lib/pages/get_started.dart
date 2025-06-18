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
              child: Image.asset('bubbleImages/bubble.png'),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Image.asset('bubbleImages/bubble6.png', scale: 2.5),
            ),
            Positioned(
              top: -150,
              right: -250,
              child: Image.asset('bubbleImages/bubble.png'),
            ),
            // White Circle Icon
            Positioned(
              top: 120,
              right: 0,
              left: 0,
              child: Center(
                child: Image.asset('bubbleImages/bubbleIcon.png', scale: .9),
              ),
            ),
            Positioned(
              bottom: -200,
              left: -290,
              child: Image.asset('bubbleImages/bubble.png'),
            ),
            Positioned(
              top: 300,
              right: 10,
              child: Image.asset('bubbleImages/bubble4.png', scale: 4),
            ),
            Positioned(
              top: 250,
              right: 90,
              child: Image.asset('bubbleImages/bubble5.png', scale: 2),
            ),
            Positioned(
              bottom: 280,
              left: 200,
              child: Image.asset('bubbleImages/bubble2.png', scale: 4),
            ),
            Positioned(
              bottom: 230,
              left: 20,
              child: Image.asset('bubbleImages/bubble2.png', scale: 6),
            ),
            Positioned(
              bottom: 140,
              left: 50,
              child: Image.asset('bubbleImages/bubble3.png', scale: 2),
            ),
            Positioned(
              bottom: -20,
              right: -250,
              child: Image.asset('bubbleImages/bubble.png'),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: -50,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'Bubbles!',
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 255, 0, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Ready to pop into your first Bubble?',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 165, 165, 165),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: -MediaQuery.of(context).size.height + 200,
              child: Center(
                child: GestureDetector(
                  onTapDown: (_) {
                    setState(() {
                      _ispressed = true;
                    });
                  },
                  onTapUp: (_) {
                    setState(() {
                      _ispressed = false;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: _ispressed
                            ? [Colors.pink.shade700, Colors.purple.shade700]
                            : [Color(0xfffc466b), Color(0xff3f5efb)],
                        stops: [0.25, 0.75],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
