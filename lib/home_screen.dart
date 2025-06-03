import 'package:auto_size_text/auto_size_text.dart';
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
      appBar: AppBar(title: Text("AutoSize Text Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 25 ==> AutoSize Text Widget ------------------

      // AutoSizeText is used to automatically adjust the font size of the text
      // so that it fits within its container without overflowing.

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ----------------------- Normal Text Widget ------------------
            Container(
              height: 200,
              width: 250,
              color: Colors.orange,
              child: Text(
                "AutoSizeText is used to automatically adjust the font size of the text, so that it fits within its container without overflowing.",
                style: TextStyle(fontSize: 30),
              ),
            ),

            SizedBox(height: 50),

            // ----------------------- AutoSize Text Widget ------------------
            Container(
              height: 100,
              width: 250,
              color: Colors.greenAccent,
              child: AutoSizeText(
                "AutoSizeText is used to automatically adjust the font size of the text, so that it fits within its container without overflowing.",
                style: TextStyle(fontSize: 30),
                //maxLines: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}