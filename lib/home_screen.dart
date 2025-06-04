import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 32 ==> Switch Widget ------------------

      body: Center(
        child: Switch(
            value: status,
            activeColor: Colors.red,
            onChanged: (val){
              setState(() {
                status = val;
              });
            }
        ),
      ),
    );
  }
}