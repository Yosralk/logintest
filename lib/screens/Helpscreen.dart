import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Frequently Asked Questions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            _faqCard('How can I track my order?', 'You can track your order in the "Delivery Status" section.'),
            _faqCard('What are the payment methods?', 'We accept credit/debit cards, and PayPal.'),
            _faqCard('How can I return an item?', 'Items can be returned within 30 days of purchase.'),
            const SizedBox(height: 20),
            const Text('Contact Support', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Contact Us'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _faqCard(String question, String answer) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(question, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(answer),
      ),
    );
  }
}