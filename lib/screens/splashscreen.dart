import 'package:flutter/material.dart';
import 'dart:async'; // Import dart:async for Timer
import 'Welcomscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
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
        color: Color(0Xbf9752),
        decoration: BoxDecoration(
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
