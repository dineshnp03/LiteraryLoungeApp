import 'package:flutter/material.dart';
import 'package:literary_lounge_app/screens/thank_you_screen.dart'; // Import ThankYouScreen

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();

  // Controllers for form fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers when the widget is disposed
    nameController.dispose();
    addressController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).hintColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Add gap before the Full Name field
              const SizedBox(height: 20), // 20 pixels of space

              // Full Name Field
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Address Field
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'Shipping Address',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your shipping address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Email Field
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  // Basic email validation
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if (!RegExp(r'^\S+@\S+\.\S+$').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              // Phone Field
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  // Basic phone number validation
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Please enter a 10-digit phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              // Place Order Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate directly to ThankYouScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThankYouScreen(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}