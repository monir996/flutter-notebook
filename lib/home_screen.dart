import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Fonts", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 34 ==> Google Fonts Package ------------------

      body: Center(
        child: Text(
          "Coding Bloom",
          style: GoogleFonts.acme(color: Colors.red, fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}