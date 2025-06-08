import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    // ------------- Variables ---------
    final GoogleSignIn googleSignIn = GoogleSignIn();
    var user = FirebaseAuth.instance.currentUser;


    return Scaffold(
      appBar: AppBar(title: const Text("Profile Screen", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Login Email: ${user?.email.toString()}"),

            SizedBox(height: 50),

            TextButton(
                onPressed: () async {

                  if(user != null){

                    try{
                      // SignOut from Google
                      await googleSignIn.signOut();

                      // SignOut from Firebase
                      await FirebaseAuth.instance.signOut();

                      Navigator.pushReplacementNamed(context, '/home');
                    }
                    catch(error){

                      print("Sign out error: $error");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Sign out failed")),
                      );

                    }

                  }

                },
                child: Text("Sign out", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue))
            ),

          ],
        ),
      ),

    );
  }
}
