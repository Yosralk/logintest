import 'package:flutter/material.dart';
import 'screens/splashscreen.dart';


void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
