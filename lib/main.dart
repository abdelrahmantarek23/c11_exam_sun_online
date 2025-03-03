import 'package:c11_exam_sun_online/screen_one.dart';
import 'package:c11_exam_sun_online/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      routes: {
        ScreenOne.routeName: (context) => const ScreenOne(),
        ScreenTwo.routeName: (context) => const ScreenTwo(),
      },
      initialRoute: ScreenOne.routeName,
    );
  }
}
