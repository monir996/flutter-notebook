import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Layout Builder", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 53 ==> Layout Builder Widget ------------------

      // LayoutBuilder is used to build widgets based on the available space.
      // It helps create responsive layouts by giving the widget the parent’s size constraints.


      body: SafeArea(

          child: LayoutBuilder(

              builder: (context, constraints) {
                double width = constraints.maxWidth;
                double height = constraints.maxHeight;

                if(width < 600){
                  return Container(
                      width: width / 2,
                      height: height / 3,
                      color: Colors.redAccent,
                      child: Column(
                        children: [
                          Text("It's a Mobile Device", style: TextStyle(fontSize: 24, color: Colors.white)),
                          Text("Width: $width", style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      )
                  );
                }


                else if(width >= 600 && width <= 1024) {
                  return Container(
                      width: width / 2,
                      height: height / 3,
                      color: Colors.lightBlueAccent,
                      child: Column(
                        children: [
                          Text("It's a Tablet Device", style: TextStyle(fontSize: 24, color: Colors.white)),
                          Text("Width: $width", style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      )
                  );
                }


                else {
                  return Container(
                      width: width / 2,
                      height: height / 3,
                      color: Colors.orange,
                      child: Column(
                        children: [
                          Text("It's a Desktop/Web Device", style: TextStyle(fontSize: 24, color: Colors.white)),
                          Text("Width: $width", style: TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      )
                  );
                }

              }

          )
      ),
    );
  }
}