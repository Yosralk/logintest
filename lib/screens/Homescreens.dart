import 'package:flutter/material.dart';

class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

  static const List<String> tabs = [
    "All",
    "Category",
    "Top",
    "Recommended",
  ];
  static const List<String> images = [
    'images/img1.jpg',
    'images/img2.jpg',
    'images/img3.jpg',
    'images/img4.jpg',
    'images/img5.jpg',
    'images/img6.jpg',
    'images/img7.jpg',
    'images/img8.jpg',
    'images/img9.jpg',
  ];
  static const List<String> titles = [
    'Womens Jacket',
    'Womens Jeans',
    'Girls Clothes',
    'Summer Dresses',
    'Womens Heels',
    'Womens Makeup',
    'Shoes for Men',
    'Womens Shirt',
    'Womens Suits'
  ];
  static const List<String> prices = [
    '20',
    '15',
    '10',
    '12',
    '20',
    '25',
    '13',
    '5',
    '9'
  ];

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.75,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XCDedced6).withOpacity(0.5),
                        blurRadius: 0.8,
                        spreadRadius: 0.5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6.5,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XCDedced6).withOpacity(0.5),
                        blurRadius: 0.8,
                        spreadRadius: 0.5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Filter",
                      prefixIcon: Icon(Icons.filter_list),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0XCDedced6).withOpacity(0.5),
                    blurRadius: 0.8,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("images/ss.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 20,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Homescreens.tabs.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 7.5),
                    margin: EdgeInsets.only(right: 15),
                    child: Text(
                      Homescreens.tabs[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Homescreens.images.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 150,
                                    color: Color(0XCD8f3340),
                                    child: Image(
                                      image: AssetImage(Homescreens.images[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      Homescreens.titles[index],
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text("\$${Homescreens.prices[index]}"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
