import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text('Native Splash Screen')
      ),

        // ----------------------- Branch 64 ==> Native Splash Screen ------------------
      body: Center(
        child: Text('Welcome to Home', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
      ),
    );
  }
}
