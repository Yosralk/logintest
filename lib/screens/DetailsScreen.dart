import 'package:flutter/material.dart';
import 'product.dart';

class DetailsScreen extends StatelessWidget {
  final product products;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        backgroundColor: Colors.pink,
        leading: const BackButton(),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product Image
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(product.images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Product Details Container
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  product.titles,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Product Price
            Text(
              "\$${product.prices}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
