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
      appBar: AppBar(title: Text("Card Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 26 ==> Card Widget ------------------

      body: Center(

        child: Card(

          color: Colors.red,
          elevation: 10,
          shadowColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

          child: Container(
            alignment: Alignment.center,
            height: 250,
            width: 250,
            child: Text("This is Card", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),

        ),
      ),
    );
  }
}