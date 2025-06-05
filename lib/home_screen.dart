import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late int _counter = 0;

  // ----------------------- Save to Shared Preference ------------------
  void _increaseCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter++;
    });

    prefs.setInt("Counter", _counter);
  }

  void _decreaseCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter--;
    });

    prefs.setInt("Counter", _counter);
  }

  // ----------------------- Load from Shared Preference ------------------
  void loadFromSharedPref()async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt("Counter") ?? 0;
    });
  }

  // ----------------------- Remove Value from Shared Preference ------------------
  void removeFromSharedPref()async{
    final prefs = await SharedPreferences.getInstance();

    final removeSuccess = await prefs.remove("Counter");
    //print(removeSuccess);
    setState(() {
      _counter = 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFromSharedPref();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Shared Preference", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 50 ==> Shared Preference ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("$_counter", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.all(20.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  CupertinoButton.filled(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      onPressed: _increaseCounter,
                      child: Text("+", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                  ),

                  CupertinoButton.filled(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      onPressed: _decreaseCounter,
                      child: Text("-", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                  ),
                ],
              ),
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                ),
                onPressed: removeFromSharedPref,
                child: Text("Clear Save Data")
            )
          ],
        ),
      ),
    );
  }
}