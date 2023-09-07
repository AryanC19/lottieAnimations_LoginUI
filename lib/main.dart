// ignore_for_file: prefer_const_constructors

import 'package:animation_page/screens/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SizedBox(
          height: 120,
          width: 120,
          child: Lottie.network(
              'https://lottie.host/11df2ff9-571f-4c6c-9413-a49b3aac8309/LSoOJzkslX.json'),
        ),
        nextScreen: AnimatedLandingPage(),
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}
