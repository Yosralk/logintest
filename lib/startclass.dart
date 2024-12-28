import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class satrtclass extends StatefulWidget {
  const satrtclass({super.key});

  @override
  State<satrtclass> createState() => _satrtclassState();
}

class _satrtclassState extends State<satrtclass> {
  final introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          image: Image.network("https://www.clipartmax.com/png/middle/111-1116730_online-shopping-png-transparent-images-online-shop-icon-png.png"),
          title: "shoppping",
         // decoration: PageDecoration()
        ),
      ],
      back: Text("Back"),
      next: Text("Next"),
      done: Text("Done"),
      onDone: (){},
     // onSkip: (){},
      showBackButton: true,
    );
  }


}
