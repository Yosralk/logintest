import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Item> cartItems = [
    Item(name: 'Product 1', price: 100),
    Item(name: 'Product 2', price: 200),
    Item(name: 'Product 3', price: 150),
  ];

  void _removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: cartItems.isEmpty
          ? const Center(child: Text('Your shopping cart is empty.'))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () => _removeItem(index),
            ),
          );
        },
      ),
    );
  }
}

class Item {
  final String name;
  final double price;

  const Item({required this.name, required this.price});
}
