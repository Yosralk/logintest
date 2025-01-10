
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'splashscreen.dart';
import 'Loginscreen.dart';

class Welcomscreen extends StatefulWidget {
  const Welcomscreen({super.key, required List<dynamic> pages});

  @override
  State<Welcomscreen> createState() => _WelcomscreenState();
}

class _WelcomscreenState extends State<Welcomscreen> {
  final introkey =GlobalKey<_WelcomscreenState>();
  PageDecoration PageDecoration =PageDecoration(
    titleTextStyle:TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
    pageColor:Colors.white
    bodyTextStyle:TextStyle(
      fontSize: 25,
    )
  );
  @override
  Widget build(BuildContext context) {
    return Welcomscreen(
      key: introkey,
      pages:[
      PageViewModel(

        image: Image.asset("images/shopping.png.jpg"),
        title: "shop Now!",
        decoration:PageDecoration
      ),
        PageViewModel(
            image: Image.asset("images/sale.png.jpg"),
            title: "Dicount code!",
            decoration:PageDecoration,
          footer: Container(
            color: Color(0XCDf03c81),
            child: Column(
              children: [
                Text("Discount code : YOSER12"),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                },
                    child: )
                Column(
                  children: [
                    Container(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                        child: ElevatedButton(onPressed: (){}, child: Text("Let's go",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0XCD870519),),
                        ),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0XCD8f0d3f),),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        PageViewModel(
            image: Image.asset("images/delvary.png.jpg"),
            title: "order Now!",
            decoration:PageDecoration
        ),
      ],
      back:Text("back"),
      next:Text("Next"),
      done:Text("Done"),
      showBackButton:true,


    );
  }
}
