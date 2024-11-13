import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';



main(){
  runApp(Yoser());
}
class Yoser extends StatefulWidget {
  const Yoser({super.key});

  @override
  State<Yoser> createState() => _YoserState();
}

class _YoserState extends State<Yoser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
          routes: {
        '/firstscreen':(context)=> Screen1(),
            '/secondscreen':(context)=>screen2(),
          },
          theme: ThemeData(
            textTheme: TextTheme(
              bodyMedium: TextStyle(
                fontSize: 15,color: Colors.purpleAccent,
              ),
              bodySmall: TextStyle(
                fontSize: 20,color: Colors.purple,
              ),
              bodyLarge: TextStyle(
                fontSize: 10,color: Colors.grey,
                fontWeight: FontWeight.bold
              )
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Color(0xCDf54242),
              foregroundColor: Colors.black
            )
          ),

    );
  }
}
