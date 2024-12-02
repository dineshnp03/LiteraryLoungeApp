import 'package:flutter/material.dart';
import 'package:literary_lounge_app/models/books.dart';
import '../screens/detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Book product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(product: product),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                product.image,
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Title
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Product Price
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const Spacer(), // Push the button to the bottom
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(product: product),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 36),
                      ),
                      child: const Text('View Details'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
