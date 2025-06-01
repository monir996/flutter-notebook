import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/custom_snackbar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Create Normal Default SnackBar ------------------
  mySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(message),
            action: SnackBarAction(label: "Undo", onPressed: (){}),
            //behavior: SnackBarBehavior.floating,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 15 ==> SnackBar Widget ------------------
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ----------------------- Normal SnackBar ------------------
            TextButton(
                onPressed: (){
                  mySnackBar("Delete Successful", context);
                },
                child: Text("Show SnackBar")
            ),

            SizedBox(height: 20),

            // ----------------------- Stylish SnackBar ------------------
            CupertinoButton.filled(
                child: Text("Stylish SnackBar"),
                onPressed: (){
                  stylishSnackBar(context, "The Email Address is already in use! Please try with a different one.");
                }
            )
          ],
        ),
      ),

    );
  }
}