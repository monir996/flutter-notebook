import 'package:flutter/material.dart';
import 'package:flutter_notebook/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Provider State Management", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 57 ==> Provider State Management ------------------

      // Provider is a state management solution used to share and manage data
      // across the app. It helps widgets listen to changes and rebuild when needed,
      // making the app more organized and efficient.


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(

              "${context.watch<CounterProvider>().count}", //-------------- Showing counter value
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue)
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                    onPressed: (){
                      context.read<CounterProvider>().incrementCount();
                    },
                    child: Icon(Icons.add),
                ),

                FloatingActionButton(
                  onPressed: (){
                    context.read<CounterProvider>().decrementCount();
                  },
                  child: Icon(Icons.remove),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}