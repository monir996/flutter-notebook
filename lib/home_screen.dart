import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Lang {kotlin, dart, java}

class _HomeScreenState extends State<HomeScreen> {

  Lang? _selectedLang = Lang.dart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioButton Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 30 ==> Radio Button Widget ------------------

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("Which Language do you like?"),
            SizedBox(height: 50),

            ListTile(
              title: Text("Kotlin"),
              leading: Radio(
                  value: Lang.kotlin,
                  groupValue: _selectedLang,
                  onChanged: (value) {
                    setState(() {
                      _selectedLang = value;
                    });
                  }
              ),
            ),

            ListTile(
              title: Text("Dart"),
              leading: Radio(
                  value: Lang.dart,
                  groupValue: _selectedLang,
                  onChanged: (value) {
                    setState(() {
                      _selectedLang = value;
                    });
                  }
              ),
            ),

            ListTile(
              title: Text("Java"),
              leading: Radio(
                  value: Lang.java,
                  groupValue: _selectedLang,
                  onChanged: (value) {
                    setState(() {
                      _selectedLang = value;
                    });
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }
}