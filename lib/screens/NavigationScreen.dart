import 'package:flutter/material.dart';
import 'package:logintest/screens/Cartscreen.dart';
import 'package:logintest/screens/Favscreen.dart';
import 'package:logintest/screens/Profilesceern.dart';
import 'Homescreens.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Navigationscreen extends StatefulWidget {
  const Navigationscreen({super.key});

  @override
  State<Navigationscreen> createState() => _NavigationscreenState();
}

class _NavigationscreenState extends State<Navigationscreen> {
  List<Widget> pages = [
    HomeScreens(),
    Cartscreen(),
    Favscreen(),
    Profilescreen(),
  ];
  int indexPages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: indexPages,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.shopping_bag_outlined,
          Icons.favorite,
          Icons.person
        ],
        activeIndex: indexPages,
        inactiveColor: Color(0XCDb5a1a6).withOpacity(0.7),
        gapLocation: GapLocation.center,
        iconSize: 22,
        onTap: (value) {
          setState(() {
            indexPages = value;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0XCDf07390),
        shape: CircleBorder(),
        focusColor: Color(0XCDb03c57),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
