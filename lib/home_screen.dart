import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {

    // ----------------------- CupertinoActionSheet Items ------------------
    final action = CupertinoActionSheet(
      title: Text("Which fruits do you like?"),
      message: Text("Select the items you like:"),
      actions: [
        CupertinoActionSheetAction(onPressed: (){}, child: Text("Mango")),
        CupertinoActionSheetAction(onPressed: (){}, child: Text("Apple")),
        CupertinoActionSheetAction(onPressed: (){}, child: Text("Orange")),
        CupertinoActionSheetAction(onPressed: (){}, child: Text("Lichi")),
      ],
      cancelButton: CupertinoActionSheetAction(
          onPressed: (){Navigator.pop(context);},
          child: Text("Cancel")
      ),
    );


    return Scaffold(
      appBar: AppBar(title: Text("Cupertino Action Sheet", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 43 ==> CupertinoActionSheet Widget ------------------

      body: Center(
        child: TextButton(
            onPressed: (){
              showCupertinoModalPopup(
                  context: context,
                  builder: (context) => action
              );
            },
            child: Text("Show Action Sheet")
        ),
      ),
    );
  }
}