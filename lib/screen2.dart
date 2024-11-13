import 'package:flutter/material.dart';
import 'main.dart';
import 'screen1.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as List;
  return Scaffold(
    appBar: AppBar(
      title: Text("screen2"),
    ),
    body: Column(
      children: [
        Text("Name:${args[0]}"),
        Text("Email:${args[1]}",style:Theme.of(context).textTheme.bodyLarge,),]
    )
  );
  }
}
