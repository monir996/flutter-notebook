import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Firebase Google SignIn", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 59 ==> Firebase Google SignIn ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  bool isLogged = await login();
                  if(isLogged){
                    Navigator.pushReplacementNamed(context, '/profile');
                  }
                },
                child: Text("SignIn with Google", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue))
            )
          ],
        ),
      ),
    );
  }
}

// ----------------------- Firebase Google SignIn Credential ------------------
 Future<bool> login() async {

  final user = await GoogleSignIn().signIn();

  GoogleSignInAuthentication userAuth = await user!.authentication;

  var credential = GoogleAuthProvider.credential(idToken: userAuth.idToken, accessToken: userAuth.accessToken);

  await FirebaseAuth.instance.signInWithCredential(credential);

  return FirebaseAuth.instance.currentUser != null;
}