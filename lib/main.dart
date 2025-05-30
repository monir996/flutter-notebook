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

      // ----------------------- Branch 3  ==> AppBar Widget ------------------

      appBar: AppBar(

          title: Text("Flutter AppBar Widget", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          //titleSpacing: 20,
          elevation: 10,
          leading: Icon(Icons.arrow_back, color: Colors.white),

          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            Icon(Icons.notifications, color: Colors.white),
          ],
          actionsPadding: EdgeInsets.only(right: 20),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
          ),

      ),
    );
  }
}

