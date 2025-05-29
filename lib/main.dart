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

    // ----------------------- Branch 2 ==> Scaffold Class ------------------
    return Scaffold(

      appBar: AppBar(title: Text("Scaffold Class"), backgroundColor: Colors.pinkAccent,),

      body: Center(child: Text("Flutter Notebook")),

      drawer: Drawer(),

      //endDrawer: Drawer(),

      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),

      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person_3_rounded), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ]
      ),

      //bottomSheet: ,

    );
  }
}

