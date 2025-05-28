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
      appBar: AppBar(title: Text("Column Widget"), backgroundColor: Colors.cyan),


      // ----------------------- Branch 5  ==> Column Widget ------------------
      body: Container(
        color: Colors.deepPurple,

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            Container(padding: EdgeInsets.all(20), color: Colors.lightGreenAccent, child: Text("One")),
            Container(padding: EdgeInsets.all(30), color: Colors.red, child: Text("Two")),
            Container(padding: EdgeInsets.all(40), color: Colors.pinkAccent, child: Text("Three")),
          ],
        ),
      ),
    );
  }
}

