import 'package:flutter/material.dart';
import 'package:logintest/screen1.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}



// import 'screen1.dart';
// class myapp extends StatefulWidget {
//   const myapp({super.key});
//
//   @override
//   State<myapp> createState() => _myappState();
// }
//
// class _myappState extends State<myapp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Screen1(),
//     );
//   }
// }
