import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  final String productName;

  const RatingScreen({super.key, required this.productName});

  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  double _rating = 0;
  final TextEditingController _reviewController = TextEditingController();

  void _submitReview() {
    if (_reviewController.text.isNotEmpty && _rating > 0) {
      // Handle review submission (e.g., save to database)
      print('Review Submitted: ${_reviewController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate ${widget.productName}'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Rate the product:', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Slider(
              value: _rating,
              min: 0,
              max: 5,
              divisions: 5,
              label: _rating.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  _rating = value;
                });
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _reviewController,
              decoration: InputDecoration(
                labelText: 'Write a review',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitReview,
              child: const Text('Submit Review'),
            ),
          ],
        ),
      ),
    );
  }
}