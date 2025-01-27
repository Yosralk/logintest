
import 'package:flutter/material.dart';
import 'product.dart';

class DetailsScreen extends StatelessWidget {
  final product products;

  const DetailsScreen({super.key, required this.products});

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

            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(products.images),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  products.titles,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${products.prices} JOD',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
