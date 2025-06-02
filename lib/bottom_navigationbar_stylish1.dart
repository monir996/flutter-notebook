import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class BottomNavigationBarStylish1 extends StatefulWidget {
  const BottomNavigationBarStylish1({super.key});

  @override
  State<BottomNavigationBarStylish1> createState() => _BottomNavigationBarStylish1State();
}

class _BottomNavigationBarStylish1State extends State<BottomNavigationBarStylish1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar"), backgroundColor: Colors.lightGreenAccent),

      body: SafeArea(
          child: views.elementAt(selectedIndex)
      ),

      // ----------------------- Stylish BottomNavigationBar 1 ------------------
      bottomNavigationBar: BottomNavyBar(
          //iconSize: 34,
          //backgroundColor: Colors.black87,
          selectedIndex: selectedIndex,
          items: [

            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                //activeColor: Colors.blue,
                //inactiveColor: Colors.grey
            ),

            BottomNavyBarItem(
                icon: Icon(Icons.person_2_outlined),
                title: Text("Profile"),
                //activeColor: Colors.blue,
                //inactiveColor: Colors.grey
            ),

            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text("Settings"),
                //activeColor: Colors.blue,
                //inactiveColor: Colors.grey
            ),
          ],

          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          }
      ),
    );
  }
}
