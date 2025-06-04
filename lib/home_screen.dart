import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 36 ==> Slider Widget ------------------

      body: Center(
        child: Slider(
            min: 0,
            max: 100,
            divisions: 100, // it will divide 100 parts, like: 1, 2, 3...100 /// if value = 20, then 40, 60, 80, 100
            value: _currentSliderValue,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },

        ),
      ),
    );
  }
}