import 'package:flutter/material.dart';
import 'package:literary_lounge_app/models/books.dart';

class DetailScreen extends StatelessWidget {
  final Book product;

  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).hintColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Container(
            height: MediaQuery.of(context).size.height * 0.4, // 40% of screen height
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover, // Ensures the image covers the container proportionally
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Book Name
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 24, // Bigger font size for the book name
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                // Price
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 10),
                // Description
                Text(
                  product.longDescription,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
