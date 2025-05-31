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
      appBar: AppBar(title: Text("SnackBar Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 15 ==> SnackBar Widget ------------------
      body: Center(
        child: TextButton(
            onPressed: (){
              mySnackBar("Delete Successful", context);
            },
            child: Text("Show SnackBar")
        ),
      ),

    );
  }
}