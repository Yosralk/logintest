import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Details"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trip Details",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Stephen"),
              subtitle:  Text("4.5 Stars Rating"),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text("Order Now"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Cost: \$21",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}