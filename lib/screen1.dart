import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List userData =["yoser","yoser@gmail.com",22];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen2()),
              );
            },
            child: Text("Go"),
          ),
          Text("bodyMedium",
            style: Theme.of(context).textTheme.bodyMedium
          )
        ],
      ),
    );
  }
}
