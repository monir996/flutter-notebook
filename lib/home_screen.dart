import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDownButton Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 28 ==> DropDownButton Widget ------------------

      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),

            child: DropdownButton(

                elevation: 16,
                hint: Text("File Action", style: TextStyle(fontSize: 16.0, color: Colors.black87)),
                style: TextStyle(fontSize: 16.0, color: Colors.blue),
                icon: Icon(Icons.arrow_drop_down_sharp),
                value: selectedValue,
                dropdownColor: Colors.black87,
                underline: Container(),
                items: [
                  DropdownMenuItem(value: "Save",child: Text("Save")),
                  DropdownMenuItem(value: "Open",child: Text("Open")),
                  DropdownMenuItem(value: "Delete",child: Text("Delete", style: TextStyle(color: Colors.red))),
                ],
                onChanged: (String? newValue){
                  setState(() {
                    selectedValue = newValue;
                  });
                }

            ),
          ),
        ),
      ),
    );
  }
}