import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListTile Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 19  ==> ListTile Widget ------------------

      body: Center(
        child: ListTile(

          leading: Icon(Icons.person_3_rounded),
          trailing: Icon(Icons.info_outline_rounded),
          title: Text("Mohammad Monir Hossain"),
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
          textColor: Colors.black54,
          subtitle: Text("mdmonir@gmail.com"),
          subtitleTextStyle: TextStyle(fontStyle: FontStyle.italic),
          horizontalTitleGap: 30,
          tileColor: Colors.black12,
          onTap: (){},
          onLongPress: (){},

        ),
      ),
    );
  }
}