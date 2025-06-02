import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class BottomNavigationBarStylish2 extends StatefulWidget {
  const BottomNavigationBarStylish2({super.key});

  @override
  State<BottomNavigationBarStylish2> createState() => _BottomNavigationBarStylish2State();
}

class _BottomNavigationBarStylish2State extends State<BottomNavigationBarStylish2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar"), backgroundColor: Colors.lightGreenAccent),

      body: SafeArea(
          child: views.elementAt(selectedIndex)
      ),

      // ----------------------- Stylish BottomNavigationBar 2 ------------------
      bottomNavigationBar: ConvexAppBar(

            initialActiveIndex: selectedIndex,
            //backgroundColor: Colors.red,
            color: Colors.white,
            //style: TabStyle.textIn,
            //activeColor: Colors.green,
            gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft
          ),

          items: [
            TabItem(icon: Icon(Icons.home_outlined), title: "Home"),
            TabItem(icon: Icon(Icons.map_outlined), title: "Discovery"),
            TabItem(icon: Icon(Icons.add), title: "Add"),
            TabItem(icon: Icon(Icons.person_outline), title: "Profile"),
            TabItem(icon: Icon(Icons.settings_outlined), title: "Settings"),
          ],
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
        },
      ),

    );
  }
}
