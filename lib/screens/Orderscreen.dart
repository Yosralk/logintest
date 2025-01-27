import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  final List<Order> orders = [
    Order(orderId: '12345', status: 'Shipped', date: '2025-01-25', totalPrice: 350),
    Order(orderId: '12346', status: 'Delivered', date: '2025-01-20', totalPrice: 500),
    Order(orderId: '12347', status: 'Pending', date: '2025-01-28', totalPrice: 250),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text('Order #${orders[index].orderId}'),
              subtitle: Text('Status: ${orders[index].status} - ${orders[index].date}'),
              trailing: Text('${orders[index].totalPrice} JOD'),
              onTap: () {
                // Navigate to order details screen (optional)
              },
            ),
          );
        },
      ),
    );
  }
}

class Order {
  final String orderId;
  final String status;
  final String date;
  final double totalPrice;

  const Order({
    required this.orderId,
    required this.status,
    required this.date,
    required this.totalPrice,
  });
}