import 'package:flutter/material.dart';

class Favscreen extends StatefulWidget {
  const Favscreen({super.key});

  @override
  State<Favscreen> createState() => _FavscreenState();
}

class _FavscreenState extends State<Favscreen> {
  List<String> favoriteItems = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  final TextEditingController _controller = TextEditingController();

  void _addItem(String newItem) {
    setState(() {
      favoriteItems.add(newItem);
    });
  }

  void _editItem(int index, String newValue) {
    setState(() {
      favoriteItems[index] = newValue;
    });
  }

  void _removeItem(int index) {
    setState(() {
      favoriteItems.removeAt(index);
    });
  }

  void _showAddItemDialog() {
    _controller.clear();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New Item'),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter item name'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                _addItem(_controller.text);
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showEditItemDialog(int index) {
    _controller.text = favoriteItems[index];
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Item'),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter new value'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller.text.isNotEmpty) {
                _editItem(index, _controller.text);
                Navigator.pop(context);
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _showAddItemDialog,
          ),
        ],
      ),
      body: favoriteItems.isEmpty
          ? const Center(
        child: Text('No favorite items yet!'),
      )
          : ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(favoriteItems[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.blue),
                  onPressed: () => _showEditItemDialog(index),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _removeItem(index),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
