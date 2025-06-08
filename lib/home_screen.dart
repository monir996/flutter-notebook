import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


                // ----------------------- Branch 60 ==> Firebase Email SignIn ------------------

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text("Firebase Email SignIn", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,

          actions: [
            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(value: "logout", child: Text("Logout", style: TextStyle(fontSize: 16))),
              ];
            },
              offset: Offset(0, 55),
              iconColor: Colors.white,
              menuPadding: EdgeInsets.all(10),
              onSelected: (value) async {

                if (value == "logout")
                {
                  // ----------------------- Sign Out ------------------

                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              },
            )
          ],
      ),


      body: Center(
        child: Text("Welcome to Home", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue)),
      ),
    );
  }
}