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
      appBar: AppBar(title: Text("Modal Bottom Sheet", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 42 ==> ModalBottomSheet Widget------------------

      body: Center(
        child: TextButton(
            onPressed: (){

              showModalBottomSheet(

                  //backgroundColor: Colors.tealAccent,
                  //isScrollControlled: true,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  context: context,
                  builder: (context) {

                    return Padding(
                      padding: const EdgeInsets.all(10.0),

                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        children: [

                          ListTile(
                            title: Text("Copy"),
                            leading: Icon(Icons.copy),
                            onTap: (){Navigator.pop(context);},
                          ),

                          ListTile(
                            title: Text("Edit"),
                            leading: Icon(Icons.edit),
                            onTap: (){Navigator.pop(context);},
                          ),

                          ListTile(
                            title: Text("Share"),
                            leading: Icon(Icons.share),
                            onTap: (){Navigator.pop(context);},
                          ),

                        ],

                      ),
                    );
                  }
              );
            },
            child: Text("Show Modal Sheet")

        ),
      ),
    );
  }
}