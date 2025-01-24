import 'package:flutter/material.dart';

class Availablesize extends StatefulWidget {
  String Size;

   Availablesize({super.key, required this.Size});

  @override
  State<Availablesize> createState() => _AvailablesizeState();
}

class _AvailablesizeState extends State<Availablesize> {
  @override
  bool isSelcetd =false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isSelcetd =!isSelcetd;
        });
      },
      child: Container(
        child: Center(
          child: Text(widget.Size,
            style: TextStyle(
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
          color: isSelcetd ? Colors.pink :Colors.transparent
        ),
      ),
    );
  }
}
