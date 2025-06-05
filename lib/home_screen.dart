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
      appBar: AppBar(title: Text("Aspect Ratio Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 51 ==> Aspect Ratio Widget ------------------

      // AspectRatio is used to maintain a specific width-to-height ratio
      // for a widget, which helps make the UI look consistent and responsive on different screen sizes.

      /*
      *   16 / 9   ==>	Video players, YouTube, modern widescreen displays
      *   4 / 3    ==>	Photography, older TV screens, classic monitors
      *   1        ==>	Square images, profile pictures, icons
      *   3 / 2    ==>	Medium aspect ratio, cards, general-purpose images
      *
      * */

      body: SafeArea(
          child: AspectRatio(
              aspectRatio: 3/2,
              child: Image.network("https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg")
          )
      ),
    );
  }
}