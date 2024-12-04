import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'screens.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
