import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Awesome Icon", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 33 ==> Font Awesome Icon ------------------

      body: Center(
        child: IconButton(
            onPressed: (){}, 
            icon: FaIcon(FontAwesomeIcons.mugHot),
            color: Colors.red,
            iconSize: 40.0,
        ),
      ),
    );
  }
}