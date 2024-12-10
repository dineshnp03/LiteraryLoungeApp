import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import Lottie package

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Confirmation'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).hintColor,
        automaticallyImplyLeading: false, // Removes the back button
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lottie Animation for Success Tick
              Lottie.asset(
                'assets/splash/animate-tick.json', // Path to the animation file
                width: 200, // Adjust the size of the animation
                height: 200,
                repeat: false, // Stops animation after one play
              ),
              const SizedBox(height: 24),
              // Success Message
              const Text(
                'Order Placed Successfully!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Thank you for shopping with us.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 32),
              // Back to Home Button
              ElevatedButton(
                onPressed: () {
                  // Navigate back to home and remove all previous routes
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
