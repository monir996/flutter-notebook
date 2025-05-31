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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Current Index for BottomNavigationBar Item ------------------
  int _selectedIndex = 0;

  final List<Widget> _views = [
    const Center(child: Text("Home", style: TextStyle(fontSize: 24, color: Colors.blue))),
    const Center(child: Text("Profile", style: TextStyle(fontSize: 24, color: Colors.red))),
    const Center(child: Text("Settings", style: TextStyle(fontSize: 24, color: Colors.pink))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"), backgroundColor: Colors.lightGreenAccent),

      // ----------------------- Branch 14 ==> BottomNavigationBar Widget ------------------
      body: SafeArea(
          child: _views.elementAt(_selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
      ),

    );
  }
}

