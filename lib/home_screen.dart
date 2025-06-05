import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Demo Items ------------------
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  void doNothing(BuildContext context){}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Slideable Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 46 ==> Slideable Widget ------------------

      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {

          return Column(
            children: [
              Slidable(
                key: ValueKey(items[index]),

                // ----------------------- Start Action Pane ------------------
                startActionPane: ActionPane(

                    dismissible: DismissiblePane(onDismissed: (){
                      setState(() {
                        items.removeAt(index);
                      });
                    }),
                    motion: DrawerMotion(),

                    children: [
                      SlidableAction(
                        onPressed: (_){
                          setState(() {
                            items.removeAt(index);
                          });
                        },
                        label: "Delete",
                        icon: Icons.delete_forever_outlined,
                        backgroundColor: Colors.redAccent,
                      ),

                      SlidableAction(
                        onPressed: doNothing,
                        label: "Share",
                        icon: Icons.share,
                        backgroundColor: Colors.greenAccent,
                      )
                    ]
                ),


                // ----------------------- END Action Pane ------------------
                endActionPane: ActionPane(

                    motion: ScrollMotion(),

                    children: [
                      SlidableAction(
                        flex: 2, // An action can be bigger than the others.
                        onPressed: (_) {},
                        label: "Archive",
                        icon: Icons.archive,
                        backgroundColor: Colors.green,
                      ),

                      SlidableAction(
                        onPressed: (_) {},
                        label: "Save",
                        icon: Icons.save,
                        backgroundColor: Colors.blueAccent,
                      )
                    ]
                ),

                // ----------------------- Items ------------------
                child: ListTile(
                  title: Text(items[index]),
                  tileColor: Colors.black12,
                ),
              ),
              SizedBox(height: 8)
            ],
          );


        },
      ),
    );
  }
}