import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/welcome_page.dart';
const d_red = const Color(0xFFE9717D);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Yoga pour les femmes',
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),

    );
  }
}
