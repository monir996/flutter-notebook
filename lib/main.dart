import 'package:flutter/material.dart';
import 'package:flutter_notebook/fragments/HomeFragment.dart';
import 'package:flutter_notebook/fragments/ProfileFragment.dart';
import 'package:flutter_notebook/fragments/SettingsFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // ----------------------- Branch 12 ==> TabBar Widget ------------------
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
            title: Text("TabBar Widget"),
            backgroundColor: Colors.lightGreenAccent,
            centerTitle: true,

            bottom: TabBar(
                //isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.person_3_outlined), text: "Profile"),
                  Tab(icon: Icon(Icons.settings), text: "Settings"),
                ]
            ),
        ),
      
        body: TabBarView(
            children: [
              HomeFragment(),
              ProfileFragment(),
              SettingsFragment()
        ]),
      ),
    );
  }
}

