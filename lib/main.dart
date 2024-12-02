import 'package:flutter/material.dart';
import 'package:literary_lounge_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Literary Lounge',
      theme: ThemeData(
        primaryColor: const Color(0xFF3A8389),
        hintColor: const Color(0xFF50E3C2),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFF3A8389), // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        fontFamily: 'Roboto',
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

