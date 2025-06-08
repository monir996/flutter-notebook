import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Device Preview Package", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 61 ==> Device Preview Package ------------------

      /*
       * DevicePreview is used to preview how the app looks on different devices,
       * screen sizes, and orientations without needing a real device on Chrome Browser.
       * It helps in testing and building responsive UIs.
       *
       * Add Device Preview Dependency and Setup it on 'main.dart' File
       */

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Device Preview Testing...",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: (){}, child: Text("Submit"))
          ],
        ),
      ),

    );
  }
}
