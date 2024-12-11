import 'package:flutter/material.dart';
import 'package:literary_lounge_app/data/books_data.dart';
import 'package:literary_lounge_app/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Literary Lounge'),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).hintColor,
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.5,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ProductCard(product: books[index]);
        },
      ),
    );
  }
}
