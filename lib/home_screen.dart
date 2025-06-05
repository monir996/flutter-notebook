import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height / 3;
    var width = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      appBar: AppBar(title: Text("MediaQuery", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 52 ==> MediaQuery ------------------

      // MediaQuery is used to get information about the screen size,
      // orientation, and other device properties. It helps make the UI
      // responsive based on different screen sizes and devices.


      body: SafeArea(

        child: Container(
          height: height,
          width: width,
          color: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Width: $width", style: TextStyle(color: Colors.white, fontSize: width * 0.05)),
              Text("Height: $height", style: TextStyle(color: Colors.white, fontSize: width * 0.05)),
            ],
          ),
        ),

      ),
    );
  }
}