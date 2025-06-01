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
      appBar: AppBar(
          title: Text("Drawer Widget", style: TextStyle(color: Colors.white)),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue
      ),

      body: Center(),

      // ----------------------- Branch 20 ==> Drawer Widget ------------------
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.lightBlue),
                    currentAccountPicture: Image.network("https://tinyurl.com/2s73rvhm"),
                    accountName: Text("Abu Abdullah", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    accountEmail: Text("abu_abdullah@gmail.com", style: TextStyle(color: Colors.white60),)
                )
            ),

            ListTile(
                onTap: (){ Navigator.pop(context); },
                title: Text("Home"),
                trailing: Icon(Icons.home_outlined)
            ),

            ListTile(
                onTap: (){ Navigator.pop(context); },
                title: Text("Profile"),
                trailing: Icon(Icons.person_outline)
            ),

            ListTile(
                onTap: (){ Navigator.pop(context); },
                title: Text("Notification"),
                trailing: Icon(Icons.notifications_none)
            ),

            ListTile(
                onTap: (){ Navigator.pop(context); },
                title: Text("Settings"),
                trailing: Icon(Icons.settings_outlined)
            ),

            ListTile(
                onTap: (){ Navigator.pop(context); },
                title: Text("About"),
                trailing: Icon(Icons.info_outlined)
            )

          ],
        ),
      ),

    );
  }
}