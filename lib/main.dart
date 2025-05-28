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

    // ----------------------- Branch 2 ==> Scaffold Class ------------------
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold Class")),
      drawer: ,
      endDrawer: ,
      body: ,
      bottomNavigationBar: ,
      floatingActionButton: ,
      bottomSheet: ,
    );
  }
}

