import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 27 ==> Stack Widget ------------------

      body: SafeArea(
          child: Center(

            // Stack is used to place widgets on top of each other.
            // It helps to create overlapping or layered UI elements.

          child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(height: 300, width: 300, color: Colors.red),

                Container(height: 200, width: 200, color: Colors.green),

                Positioned(
                    bottom: -50,
                    left: 0,
                    child: Container(height: 100, width: 100, color: Colors.yellowAccent)
                ),
              ],
            ),
          )
      ),
    );
  }
}