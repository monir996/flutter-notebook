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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // ----------------------- Controller for PageView Widget ------------------
  PageController pageController = PageController();

  final List<Widget> _list = [HomeFragment(), ProfileFragment(), SettingsFragment()];

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(title: Text("PageView Widget"), backgroundColor: Colors.lightBlue),

      // ----------------------- Branch 13 ==> PageView Widget ------------------
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        children: _list,
        onPageChanged: (index){
          print("INDEX: $index");
        },
      )

    );
  }
}

