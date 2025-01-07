import 'package:flutter/material.dart';
import 'Welcomscreen.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});
  @override
  void initState(){
  super.initState();
  Timer(Duration(seconds: 5),
      ()=> Navigtor.push(context,
        MaterialPageRoute(builder: (context)=>Welcomscreen()),
      )
  );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0Xbf9752),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/ss.png.jpg'),
          fit: BoxFit.cover,
          opacity: 0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined,size: 90,color: Colors.white,),
            Text("Shopping ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white),),
            Text("Enjoy in Your Shopping!",style: Theme.of(context).textTheme.labelMedium,)
          ],
        ),

        )
      ),
    );
  }
}
