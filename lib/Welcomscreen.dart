import 'package:flutter/material.dart';
import 'SearchScreen.dart';

class Welcomscreen extends StatelessWidget {
  const Welcomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://static.vecteezy.com/system/resources/thumbnails/038/967/706/small/red-cartoon-car-png.png"),
            SizedBox(height: 20,),
            Text("CarPoolin",
              style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> SearchScreen()));
            },
                child: Text("Get Started"))

          ],
        ),
      ),
    );
  }
}
