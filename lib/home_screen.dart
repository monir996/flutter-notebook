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
      appBar: AppBar(title: Text("FittedBox Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 24  ==> FittedBox Widget ------------------

      // FittedBox is used to scale and fit its child within the available space.
      // It helps to prevent overflow and keeps the child widget responsive.

      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.blueAccent,
          padding: EdgeInsets.all(12),

          child: FittedBox(
              child: Text("Coding Bloom", style: TextStyle(color: Colors.white, fontSize: 200, fontWeight: FontWeight.bold))
          ),

        ),
      ),
    );
  }
}