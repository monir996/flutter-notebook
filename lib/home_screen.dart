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

      // ----------------------- Branch 29 ==> Popup Menu ------------------
      appBar: AppBar(
          title: Text("Popup Menu", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,

          actions: [
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(value: "profile", child: Text("Profile")),
                PopupMenuItem(value: "settings", child: Text("Settings")),
                PopupMenuItem(value: "logout", child: Text("Logout")),
              ];
            },
              offset: Offset(0, 50),
              color: Colors.blue,
              iconColor: Colors.white,
              onSelected: (value){
                print("You have selected: $value");
              },
            )
          ],
      ),

      body: Center(),
    );
  }
}