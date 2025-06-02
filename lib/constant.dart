
import 'package:flutter/material.dart';

int selectedIndex = 2; // Current Index for BottomNavigationBar Item

final List<Widget> views = [
  const Center(child: Text("Home", style: TextStyle(fontSize: 24, color: Colors.blue))),
  const Center(child: Text("Profile", style: TextStyle(fontSize: 24, color: Colors.red))),
  const Center(child: Text("Settings", style: TextStyle(fontSize: 24, color: Colors.pink))),
];