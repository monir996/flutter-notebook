import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/login.dart';
import 'package:flutter_notebook/register.dart';
import 'home_screen.dart';

Future<void> main() async {

  // ----------------------- Firebase Initialize ------------------
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

      ),
      home: FirebaseAuth.instance.currentUser != null ? HomeScreen() : LoginScreen(),
      routes: {
        '/home' : (context) => HomeScreen(),
        '/register' : (context) => RegisterScreen(),
        '/login' : (context) => LoginScreen()
      },
    );
  }
}