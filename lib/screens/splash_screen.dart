import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:literary_lounge_app/screens/home_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFdad4ec), Color(0xFFf3e7e9)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:  AnimatedSplashScreen(splash:
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset("assets/splash/animate-jump.json"),
              ],
            ),
          ),
          nextScreen: const HomeScreen(),
          splashIconSize: 400,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}