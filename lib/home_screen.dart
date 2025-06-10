import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /*--------------------Reference of Hive Box--------------*/
  final _myBox = Hive.box('myBox');

  //Store Data
  String _displayedData = 'Data will show here';

  //Write Method
  void writeData(){
    _myBox.put(1, 'Monir');
    //_myBox.put('MY_KEY', 'Monir');
    //_myBox.put(1, ['Monir', 28, 'Bangladesh']);
  }

  //Read Method
  void readData(){
    var myData = _myBox.get(1);
    //print(myData);

    setState(() {
      _displayedData = myData != null ? myData.toString() : 'No data found';
    });
  }

  //Delete Method
  void deleteData(){
    _myBox.delete(1);
    setState(() {
      _displayedData = 'Data deleted';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hive Local Storage", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 62 ==> Hive Local Storage ------------------

      // Hive is a fast and lightweight local storage package.
      // It is used to store data locally on the device without using a database.
      // Useful for saving user settings, app data, or offline content.



      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              _displayedData,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),

            SizedBox(height: 50),

            /*---------------------------Buttons----------------------------*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                    onPressed: writeData,
                    color: Colors.blue[200],
                    child: Text("Write"),
                ),

                MaterialButton(
                  onPressed: readData,
                  color: Colors.blue[200],
                  child: Text("Read"),
                ),

                MaterialButton(
                  onPressed: deleteData,
                  color: Colors.blue[200],
                  child: Text("Delete"),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
