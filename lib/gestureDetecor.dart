import 'package:flutter/material.dart';

class gestureDetecor extends StatefulWidget {
  const gestureDetecor({super.key});

  @override
  State<gestureDetecor> createState() => _gestureDetecorState();
}

class _gestureDetecorState extends State<gestureDetecor> {
  bool isTurn= false;
  Color c = Colors.white54;
  Color c2= Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(isTurn ? Icons.lightbulb :Icons.lightbulb_outline,
          size: 90,
            color:isTurn? Colors.green :Colors.black,
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                setState(() {
                  isTurn =! !isTurn;
                });
              },
              onDoubleTap: (){
                setState(() {
                  c =Colors.blueAccent!;
                });
              },
              onTapCancel: (){
                setState(() {
                  c =Colors.yellow!;
                });
              },
              onHorizontalDragStart: (DragStartDetails){
                setState(() {
                  c2 = Colors.brown!;
                });
              },
              onHorizontalDragDown: (DragEndDetails){
                setState(() {
                  c2 = Colors.pinkAccent!;
                });
              },
              onVerticalDragStart:(DragStartDetails d){
                print(1);
                print(d);
              } ,
              onVerticalDragEnd: (DragEndDetails d){
                print(2);
                print(d);
              },
              onTapDown: (TapDownDetails d){
                setState(() {
                  c2= Colors.deepPurple!;
                });
              },
              onTapUp: (TapUpDetails d){
                setState(() {
                  c2 =Colors.lightBlueAccent!;
                });
              },
              child: Container(
                child: isTurn ? Text("Turn off"):Text("Turn on"),
                height: 30,
                width: 100,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
