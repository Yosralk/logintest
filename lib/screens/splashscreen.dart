import 'package:flutter/material.dart';
import 'dart:async'; // Import dart:async for Timer
import 'Welcomscreen.dart';

class SplashScreenClass extends StatefulWidget {
  const SplashScreenClass({super.key});

  @override
  _SplashScreenClassState createState() => _SplashScreenClassState();
}

class _SplashScreenClassState extends State<SplashScreenClass> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Welcomscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xcdbf9752),
          image: DecorationImage(
            image: AssetImage('images/ss.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Opacity(
          opacity: 0.5, // Use an Opacity widget for the desired effect
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: 90,
                color: Colors.white,
              ),
              Text(
                "Shopping",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
              ),
              Text(
                "Enjoy in Your Shopping!",
                style: Theme.of(context).textTheme.labelMedium,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
