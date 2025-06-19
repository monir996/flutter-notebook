import 'package:flutter/material.dart';
import 'package:flutter_notebook/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    // ---------------------------- Using Consumer -----------------
    return Consumer<CounterProvider>(

        builder: (context, value, child) => Scaffold(

          appBar: AppBar(title: Text("Second Page", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                    value.count.toString(), //--------------- Showing counter value
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
        )
    );
  }
}
