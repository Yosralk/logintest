import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  final String orderId;
  final String status;
  final String deliveryDate;
  final String address;

  const DeliveryScreen({
    super.key,
    required this.orderId,
    required this.status,
    required this.deliveryDate,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Status'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order ID: $orderId', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text('Status: $status', style: TextStyle(fontSize: 16, color: status == 'Delivered' ? Colors.green : Colors.red)),
            const SizedBox(height: 10),
            Text('Delivery Date: $deliveryDate', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text('Address: $address', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}