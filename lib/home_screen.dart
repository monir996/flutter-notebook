import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Firebase Email SignIn", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 60 ==> Firebase Email SignIn ------------------

      body: Center(
        child: Text("Welcome to Home", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue)),
      ),
    );
  }
}