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
      appBar: AppBar(title: Text("Row Widget"),backgroundColor: Colors.blue,),

      body: Center(
        child: Container(
          height: 300,
          color: Colors.cyanAccent,

          // ----------------------- Branch 4 ==> Row Widget ------------------
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(color: Colors.white, child: Text("Hello")),

              Container(color: Colors.amber, child: Text("Dart")),

              Container(color: Colors.redAccent, child: Text("Flutter")),
            ],
          ),
        ),
      ),

    );
  }
}

