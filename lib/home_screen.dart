import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Create Future Builder ------------------
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 3), (){
      return "Data loaded";
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Future Builder", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 56 ==> Future Builder ------------------

      body: Center(

        child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {

              if(snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }

              if(snapshot.hasData) {
                return Text(snapshot.data.toString());
              }
              else {
                return Text(snapshot.error.toString());
              }
            }
        ),

      ),
    );
  }
}