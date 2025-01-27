import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String query = '';

  void _updateQuery(String value) {
    setState(() {
      query = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Products'),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _updateQuery,
              decoration: InputDecoration(
                labelText: 'Search for products...',
                border: OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: _searchResults(query),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _searchResults(String query) {
    // This is just a simple search simulation
    List<Item> items = [
      Item(name: 'Product 1', price: 100),
      Item(name: 'Product 2', price: 200),
      Item(name: 'Product 3', price: 150),
    ];

    return items
        .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
        .map((item) => ListTile(
      title: Text(item.name),
      subtitle: Text('${item.price} JOD'),
    ))
        .toList();
  }
}

class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}
