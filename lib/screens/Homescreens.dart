import 'package:flutter/material.dart';

class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

  List<String> tabs=[
    "All",
    "Category",
    "Top",
    "Recomnded",
  ];

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.75,
                  height: 50,
                  decoration: BoxDecoration(
                   // color:Color(0XCDedced6).withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(color:Color(0XCDedced6).withOpacity(0.5),
                      blurRadius: 0.8,
                        spreadRadius: 0.5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),

                  ) ,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Search"),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,

                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/6.5,
                  height: 50,
                  decoration: BoxDecoration(
                    // color:Color(0XCDedced6).withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(color:Color(0XCDedced6).withOpacity(0.5),
                        blurRadius: 0.8,
                        spreadRadius: 0.5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),

                  ) ,
                  child: Icon(Icons.notifications)
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                // color:Color(0XCDedced6).withOpacity(0.2),
                boxShadow: [
                  BoxShadow(color:Color(0XCDedced6).withOpacity(0.5),
                    blurRadius: 0.8,
                    spreadRadius: 0.5,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage("images/ss.png.jpg"),
                  fit: BoxFit.cover
                )

              ) ,
            ),
            SizedBox(height: 20,),
            Container(
              height: 20,
              child: ListView.builder(scrollDirection:Axis.horizontal  ,
              itemCount:tabs.length ,
                  shrinkWrap: true,

                  itemBuilder: (context , index){
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.5),
                      margin: EdgeInsets.only(right: 15),
                      child: Text(tabs[index],
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),

                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
