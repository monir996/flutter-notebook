import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/constant.dart';
import 'bottom_navigationbar_stylish1.dart';
import 'bottom_navigationbar_stylish2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar"), backgroundColor: Colors.lightGreenAccent),

      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CupertinoButton.filled(
                    child: Text("Stylish BottomNavigationBar 1"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationBarStylish1()));
                    }
                ),

                SizedBox(height: 30),

                CupertinoButton.filled(
                    child: Text("Stylish BottomNavigationBar 2"),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationBarStylish2()));
                    }
                )
              ],
            ),
          )
      ),

      // ----------------------- Normal Default BottomNavigationBar ------------------
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
      ),

    );
  }
}
