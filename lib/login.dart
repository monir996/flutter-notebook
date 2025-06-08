import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

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

                  // ----------------------- Login with Email Password ------------------

                  try{
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: email,
                        password: pass

                    ).then((value){

                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(behavior: SnackBarBehavior.floating, content: Text("Successfully Login."))
                      );

                      Navigator.pushReplacementNamed(context, '/home');
                    });
                  }
                  on FirebaseAuthException catch(error){

                    if(error.code == "user-not-found")
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(behavior: SnackBarBehavior.floating, content: Text("No user found."))
                      );
                    }
                    else if(error.code == "wrong-password") {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(behavior: SnackBarBehavior.floating, content: Text("Incorrect password."))
                      );
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(behavior: SnackBarBehavior.floating, content: Text("Login Failed, Something went wrong."))
                      );
                    }
                  }

                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: Text("Login", style: TextStyle(fontSize: 18, color: Colors.white)),
            ),

            SizedBox(height: 25),

            InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, '/register');
                },
                child: Text("New User? Click Here", style: TextStyle(color: Colors.blue))
            )
          ],
        ),
      ),
    );
  }
}
