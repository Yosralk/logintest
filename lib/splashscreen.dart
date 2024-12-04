import 'dart:async';

import 'package:flutter/material.dart';
import 'startclass.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),
        ()=> Navigator.push(context,
            MaterialPageRoute(builder: (context)=> satrtclass()),
    );
  }
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image:DecorationImage(image: NetworkImage("https://png.pngtree.com/element_pic/00/16/08/1457b018a9ba86f.jpg"),
          fit:BoxFit.cover,
          opacity:0.5,
        ),
      ),
    child: Column(

       children: [
        Icon(Icons.shopping_bag_outlined,size: 90,color: Colors.white70,),
       Text("Flutter shopping",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w200,color: Colors.white38),),
         Text("Enjoy!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)
    ],
    ),
    ),
    );
  }
}
