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
      appBar: AppBar(title: Text("Image Widget"), backgroundColor: Colors.lightGreenAccent),

      // ----------------------- Branch 9 ==> Image Widget ------------------
      body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/nature.jpg"), //Offline Image
            ),

            SizedBox(height: 30),
            
            Container(
              padding: EdgeInsets.all(20),
              child: Image.network(
                  "https://images.pexels.com/photos/1477166/pexels-photo-1477166.jpeg", //From Internet
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
              ),
            )
          ] 
      ),
    );
  }
}

