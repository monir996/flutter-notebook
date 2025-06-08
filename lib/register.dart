import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      body: Padding(
        padding: const EdgeInsets.all(50.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter email"
              ),
            ),

            SizedBox(height: 25),

            TextField(
              controller: passController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter password"
              ),
            ),

            SizedBox(height: 35),

            ElevatedButton(
                onPressed: () async {
                  String email = emailController.text.trim();
                  String pass = passController.text.trim();

                  if(email.isEmpty || pass.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(behavior: SnackBarBehavior.floating, content: Text("Email or Password can't be empty."))
                    );
                  }
                  else {

                    // ----------------------- Create User with Email SignIn ------------------

                    try{
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: email,
                          password: pass

                      ).then((value){

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(behavior: SnackBarBehavior.floating, content: Text("Successfully Registered."))
                        );

                        Navigator.pushReplacementNamed(context, '/login');
                      });
                    }
                    on FirebaseAuthException catch(error){

                      if(error.code == "weak-password")
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(behavior: SnackBarBehavior.floating, content: Text("Password is too weak."))
                        );
                      }
                      else if(error.code == "email-already-in-use") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(behavior: SnackBarBehavior.floating, content: Text("This Email is Already Used."))
                        );
                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(behavior: SnackBarBehavior.floating, content: Text("Registration Failed, Something went wrong."))
                        );
                      }
                    }
                  }
                },

                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                child: Text("Register", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),

            SizedBox(height: 25),

            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, '/login');
                },
                child: Text("Already have an account? Click Here", style: TextStyle(color: Colors.blue))
            )
          ],
        ),
      ),
    );
  }
}
