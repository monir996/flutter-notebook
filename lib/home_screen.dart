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
      appBar: AppBar(title: Text("Flutter Notebook", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Main Branch  ==> Basic Structure ------------------

      body: Center(),
    );
  }
}