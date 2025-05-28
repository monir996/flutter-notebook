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

      appBar: AppBar(title: Text("Container Widget"), backgroundColor: Colors.amber,),
      backgroundColor: Colors.blue,

      // ----------------------- Branch 3 ==> Container Widget ------------------
      body: Container(
        width: 200,
        height: 200,
        //color: Colors.yellowAccent, //use background color only here OR only inside the BoxDecoration
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white70,
            //shape: BoxShape.circle
            borderRadius: BorderRadius.circular(16)
        ),
        transform: Matrix4.rotationZ(0.1),
        child: Text("Hello Flutter"),
      ),
    );
  }
}

