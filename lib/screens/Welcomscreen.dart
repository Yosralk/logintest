import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'Loginscreen.dart';

class Welcomscreen extends StatefulWidget {
  const Welcomscreen({Key? key}) : super(key: key);

  @override
  State<Welcomscreen> createState() => _WelcomscreenState();
}

class _WelcomscreenState extends State<Welcomscreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  final PageDecoration pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    bodyTextStyle: TextStyle(
      fontSize: 25,
    ),
    pageColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          body: "                  ",
          image:Image(image: AssetImage("images/still.jpg")),
          title: "Shop Now!",
          decoration: pageDecoration,
        ),
        PageViewModel(
          image: Image.asset("images/sale.jpg"),
          title: "Discount Code!",
          body: "Discount code: YOSER12",
          decoration: pageDecoration,
          footer: Column(
            children: [
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginscreen()),
                  );
                },
                child: Text(
                  "Let's Go",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8F0D3F),
                ),
              ),
            ],
          ),
        ),
        PageViewModel(
          body: "               ",
          image: Image.asset("images/delvary.jpg"),
          title: "Order Now!",
          decoration: pageDecoration,
        ),
      ],
      back: Text("Back"),
      next: Text("Next"),
      done: Text("Done"),
      onDone: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Loginscreen()),
        );
      },
      showBackButton: true,
    );
  }
}
