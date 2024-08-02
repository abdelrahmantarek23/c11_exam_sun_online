import 'package:c11_exam_sun_online/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const String routeName = "screen_one";
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 88,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "assets/images/Homepage.png",
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.next_plan_sharp,
              size: 30,
              color: Colors.blue,
            ), // Replace with your icon and size
            onPressed: () {
              Navigator.pushNamed(
                  context, ScreenTwo.routeName); // Navigate to ScreenTwo
            },
          ),
          SizedBox(width: 55), // Add spacing between the icon and the edge
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 24),
                child: Image.asset(
                  "assets/images/Categories.png",
                  width: 382,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 24),
                child: Image.asset(
                  "assets/images/Recommended.png",
                  width: 416,
                  height: 340,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 24),
                    child: Image.asset(
                      "assets/images/Best Seller.png",
                      width: MediaQuery.of(context).size.width - 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -13,
            left: MediaQuery.of(context).size.width / 2 - 187.5,
            child: Container(
              width: 375,
              height: 84,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x191179).withOpacity(0.1),
                    offset: Offset(0, 0),
                    blurRadius: 12,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Image.asset(
                "assets/images/Bottom Bar.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
