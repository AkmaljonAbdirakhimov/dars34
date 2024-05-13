import 'package:dars34/pages/home_page.dart';
import 'package:dars34/pages/second_page.dart';
import 'package:dars34/pages/thrid_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    SecondPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: pages[currentIndex],
      bottomNavigationBar:
          //? Material 3 - Navigation Bar
          NavigationBar(
        onDestinationSelected: (value) {
          if (value >= pages.length) {
            return;
          }
          currentIndex = value;
          setState(() {});
        },
        selectedIndex: currentIndex,
        indicatorColor: Colors.amber,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Second Page",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Third Page",
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.home),
          // ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.settings),
          // ),
        ],
      ),

      //? Material 2 - BottomNavigationBar
      // BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   onTap: (value) {
      //     currentIndex = value;
      //     setState(() {});
      //   },
      //   // selectedFontSize: 30,
      //   // selectedItemColor: Colors.amber,
      //   type: BottomNavigationBarType.shifting,
      //   items: const [
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.amber,
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.amber,
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.amber,
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
