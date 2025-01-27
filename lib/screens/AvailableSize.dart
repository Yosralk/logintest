import 'package:flutter/material.dart';

class Availablesize extends StatefulWidget {
  final String size;

  const Availablesize({super.key, required this.size});

  @override
  _AvailablesizeState createState() => _AvailablesizeState();
}

class _AvailablesizeState extends State<Availablesize> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        child: Center(
          child: Text(
            widget.size,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        height: 25,
        width: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? Colors.pink : Colors.transparent,
        ),
      ),
    );
  }
}
