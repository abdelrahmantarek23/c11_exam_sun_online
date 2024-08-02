import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  static const String routeName = "screen_two";
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/Frame 36.png"),
          ),
          Positioned(
            bottom: 0, // Aligns the bottom bar at the bottom of the screen
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 84, // Height of the bottom bar
              padding:
                  EdgeInsets.symmetric(horizontal: 32), // Horizontal padding
              child: Image.asset(
                "assets/images/Frame 4.png",
                fit: BoxFit.cover, // Ensure the image covers the entire width
              ),
            ),
          ),
        ],
      ),
    );
  }
}
