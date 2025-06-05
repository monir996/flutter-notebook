import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    // ----------------------- Create Cupertino Alert Dialog ------------------
    final dialog = CupertinoAlertDialog(
      title: Text("Please Confirm"),
      content: Text("Do you want to delete?"),
      actions: [
        CupertinoButton(
            child: Text("No"),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
        CupertinoButton(
            child: Text("Yes"),
            onPressed: (){
              Navigator.pop(context);
            }
        )
      ],
    );


    return Scaffold(
      appBar: AppBar(title: Text("Cupertino Alert Dialog", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 45 ==> Cupertino Alert Dialog ------------------

      body: Center(
        child: TextButton(
            onPressed: (){
              showCupertinoDialog(context: context, builder: (context)=> dialog);
            },
            child: Text("Show Dialog")
        ),
      ),
    );
  }
}