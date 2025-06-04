import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool? sun = false;
  bool? mon = false;
  bool? tue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CheckBox Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 31 ==> CheckBox Widget ------------------

      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
                value: sun,
                onChanged: (value){
                  setState(() {
                    sun = value;
                  });
                },
              activeColor: Colors.deepPurple,
              tileColor: Colors.black12,
              title: Text("Sunday", style: TextStyle(fontSize: 18)),
              subtitle: Text("Day1"),
              controlAffinity: ListTileControlAffinity.leading,
              //tristate: true,
            ),

            SizedBox(height: 10),

            CheckboxListTile(
              value: mon,
              onChanged: (value){
                setState(() {
                  mon = value;
                });
              },
              activeColor: Colors.deepPurple,
              tileColor: Colors.black12,
              title: Text("Monday", style: TextStyle(fontSize: 18)),
              subtitle: Text("Day2"),
              //controlAffinity: ListTileControlAffinity.leading,
              //tristate: true,
            ),

            SizedBox(height: 10),

            CheckboxListTile(
              value: tue,
              onChanged: (value){
                setState(() {
                  tue = value;
                });
              },
              activeColor: Colors.deepPurple,
              tileColor: Colors.black12,
              title: Text("Tuesday", style: TextStyle(fontSize: 18)),
              subtitle: Text("Day3"),
              //controlAffinity: ListTileControlAffinity.leading,
              //tristate: true,
            ),
          ],
        )
      ),
    );
  }
}