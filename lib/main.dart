import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox Widget"), backgroundColor: Colors.tealAccent),

      // ----------------------- Branch 6 ==> SizedBox Widget ------------------

      // SizedBox is used to add space between widgets or to give a fixed width and height to a widget.
      // It's a simple way to control layout spacing in the UI.

      body: Column(
        children: [

          Container(color: Colors.redAccent, height: 100),

          SizedBox(height: 20),

          Container(color: Colors.yellowAccent, height: 100),

          SizedBox(height: 20),

          SizedBox(
              height: 250,
              child: Container(color: Colors.blueAccent)
          ),

        ],
      ),
    );
  }
}

