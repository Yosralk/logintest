import 'package:flutter/material.dart';
import 'screens/splashscreen.dart';


void main(){
  runApp(ClothingStoreApp());
}
class ClothingStoreApp extends StatelessWidget {
  const ClothingStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing Store',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreenClass(),
    );
  }
}
