import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 18 ==> Button Widget ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ----------------------- Text Button ------------------
            TextButton(
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: "Text Button",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM
                  );
                },
                child: Text("Text Button")
            ),

            SizedBox(height: 20),

            // ----------------------- Elevated Button ------------------
            ElevatedButton(

                onPressed: (){},

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                  elevation: 10,
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                  )
                ),
                child: Text("Elevated Button"),
            ),

            SizedBox(height: 20),

            // ----------------------- Elevated Button with Icon ------------------
            ElevatedButton.icon(
                onPressed: (){},
                label: Text("Add"),
                icon: Icon(Icons.add),
            ),

            SizedBox(height: 20),

            // ----------------------- Cupertino Button without Background ------------------
            CupertinoButton(
                onPressed: (){},
                child: Text("Cupertino Button"),
            ),

            SizedBox(height: 20),

            // ----------------------- Cupertino Button Icon ------------------
            CupertinoButton(
              onPressed: (){},
              child: Icon(Icons.add_circle, size: 50),
            ),

            SizedBox(height: 20),

            // ----------------------- Cupertino Button with Background ------------------
            CupertinoButton.filled(
                onPressed: (){},
                child: Text("Cupertino Button Filled"),
            ),

            SizedBox(height: 20),

            CupertinoButton.tinted(
                onPressed: (){},
                child: Text("Cupertino Button Tinted"),
            ),

            SizedBox(height: 20),

            // ----------------------- Cupertino Button Disabled------------------
            CupertinoButton.filled(
                onPressed: null,
                disabledColor: CupertinoColors.inactiveGray,
                child: Text("Cupertino Button Disabled"),
            ),
          ],
        ),
      ),
    );
  }
}