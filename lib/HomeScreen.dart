import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Create SnackBar ------------------
  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message),
            action: SnackBarAction(label: "Undo", onPressed: (){})
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FloatingAction Button Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 16 ==> FloatingActionButton Widget ------------------
      body: Center(),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          mySnackBar("Deleted", context);
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add)
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: (){
      //       mySnackBar("Deleted", context);
      //     },
      //     backgroundColor: Colors.blue,
      //     foregroundColor: Colors.white,
      //     label: Text("Floating"),
      //     icon: Icon(Icons.add)
      // ),

    );
  }
}