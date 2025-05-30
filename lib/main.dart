import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text("SafeArea Widget"), backgroundColor: Colors.red),

      // ----------------------- Branch 5 ==> SafeArea Widget ------------------

      // SafeArea is used to keep the app content away from areas like the notch, status bar, and navigation bar.
      // It helps make sure that important UI elements are not hidden or cut off on different devices.
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(color: Colors.blue, child: Text("Flutter"))
            ),
          ],
        ),

      ),
    );
  }
}
