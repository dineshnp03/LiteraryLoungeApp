import 'package:flutter/material.dart';
import 'package:literary_lounge_app/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background-image.jpeg"),
            fit: BoxFit.fitHeight,
          ),

          // gradient: LinearGradient(
          //   colors: [Color(0xFFdad4ec), Color(0xFFf3e7e9)],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 300),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductScreen()),
                );
              },
              child: const Text('Explore the Lounge'),
            ),
          ],
        ),
      ),
    );
  }
}
