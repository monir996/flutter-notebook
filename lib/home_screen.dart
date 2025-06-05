import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Suggestions, Text Controller ------------------

  List<String> suggestionList = ["Flutter", "Dart", "Kotlin", "Java", "Python"];
  TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AutoComplete Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 38 ==> AutoComplete Widget ------------------

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),

          child: Autocomplete(

              fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {

                return TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: "Enter Text"),
                );
              },

              optionsBuilder: (value) {

               if(value.text == ''){
                 return const Iterable<String>.empty();

               } else {
                 List<String> matches = [];
                 matches.addAll(suggestionList);

                 matches.retainWhere((s){
                   return s.toLowerCase().contains(value.text.toLowerCase());
                 });

                 return matches;
               }
              },

              onSelected: (val){
                print("You hae selected $val");
              },


          ),
        ),
      ),
    );
  }
}