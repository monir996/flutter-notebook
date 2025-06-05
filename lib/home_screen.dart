import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    // ----------------------- Create Alert Dialog  ------------------
    myAlertDialog(context, String title, String message) {

      return showDialog(
          context: context,
          builder: (BuildContext context) {

            return AlertDialog(
              title: Text(title),
              content: Text(message),
              actions: [
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Yes")),

                TextButton(onPressed: (){Navigator.pop(context);}, child: Text("No")),
              ],

            );
          }
      );
    }


    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 44 ==> AlertDialog Widget ------------------

      body: Center(
        child: TextButton(
            onPressed: (){
              myAlertDialog(context, "Confirmation", "Do you want to delete?");
            },
            child: Text("Show Dialog")
        ),
      ),
    );
  }
}