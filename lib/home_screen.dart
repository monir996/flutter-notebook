import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Styles for ColorizeAnimatedText ------------------
  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Animated Text Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 23  ==> Animated Text Widget ------------------
      body: SafeArea(
        child: Center(

          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText("Coding Bloom", textStyle: colorizeTextStyle, colors: colorizeColors),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
            onTap: (){},
          ),

          // ------ For more animation style, see the Documentation of "AnimatedTextKit"  -------

        ),
      )
    );
  }






}