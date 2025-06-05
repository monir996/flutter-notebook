import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Controller For TextField ------------------
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String textValue = " ";
  String userName = " ";
  String userPass = " ";
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 37 ==> Text Field Widget ------------------

      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              // ----------------------- Name ------------------
              TextField(
                controller: nameController,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      //borderSide: BorderSide.none
                  ),

                  labelText: "User Name",
                  hintText: "Enter user name",
                  labelStyle: TextStyle(color: Colors.blue),
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.people),
                  suffixIcon: Icon(Icons.check_circle_outline),
                  filled: true,
                  fillColor: Colors.teal.shade50,
                  counterText: ''
                ),

                keyboardType: TextInputType.text,
                cursorColor: Colors.red,
                style: TextStyle(color: Colors.red),
                maxLength: 20,
                onChanged: (text){
                  setState(() {
                    textValue = text;
                  });
                },
              ),

              SizedBox(height: 20),


              // ----------------------- Password ------------------
              TextField(
                controller: passController,

                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),),
                  labelText: "Password",
                  hintText: "Enter password",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility)
                  )
                ),

                obscureText: _obscurePassword,
                cursorColor: Colors.red,
                style: TextStyle(color: Colors.red),
                onChanged: (text){},
              ),



              SizedBox(height: 50),

              // ----------------------- Submit Button ------------------
              CupertinoButton.filled(
                  minimumSize: Size(double.infinity, 50),
                  onPressed: (){
                    setState(() {
                      userName = nameController.text;
                      userPass = passController.text;
                      nameController.clear();
                      passController.clear();
                    });
                  },
                  child: Text("Submit")
              ),



              // ----------------------- Show Details ------------------
              SizedBox(height: 50),

              Text("Name Typing: $textValue", style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text("Name: $userName", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text("Password: $userPass", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
    );
  }
}