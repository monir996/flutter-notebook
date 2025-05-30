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
      appBar: AppBar(title: Text("Expanded Widget"), backgroundColor: Colors.blueAccent),

      // ----------------------- Branch 7 ==> Expanded Widget ------------------

      // Expanded is used to make a child widget take up all the available space
      // inside a Row, Column, or Flex. It helps to control how space is divided between widgets.


      body: Column(
        children: [

          // ----------------------- Example-1 ------------------
          Row(
            children: [
              Container(color: Colors.yellow, padding: EdgeInsets.all(30), child: Text("one")),
              Container(color: Colors.redAccent, padding: EdgeInsets.all(30), child: Text("Two")),

              Expanded(
                  child: Container(color: Colors.lightGreenAccent, padding: EdgeInsets.all(30), child: Text("Three"))
              ),
            ],
          ),

          SizedBox(height: 50),

          // ----------------------- Example-2 ------------------
          Row(
            children: [

              Expanded(
                  flex: 2,
                  child: Container(color: Colors.blue, padding: EdgeInsets.all(30), child: Text("Four"))
              ),
              Expanded(
                  flex: 3,
                  child: Container(color: Colors.red, padding: EdgeInsets.all(30), child: Text("Five"))
              ),
              Expanded(
                  flex: 1,
                  child: Container(color: Colors.purpleAccent, padding: EdgeInsets.all(30), child: Text("Six"))
              ),

            ],
          ),
        ],
      ),


    );
  }
}

