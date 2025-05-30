import 'package:flutter/material.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Widget"), backgroundColor: Colors.redAccent),


      // ----------------------- Branch 8 ==> Text Widget ------------------
      body: Center(
        child: Column(
          children: [


            // ----------------------- Normal Text Widget ------------------
            Text(
              "Normal Text Widget",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              //overflow: TextOverflow.ellipsis,
              //maxLines: 2,
            ),

            SizedBox(height: 40),

            // ----------------------- Rich Text Widget ------------------
            RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: "Rich ", style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold)),
                      TextSpan(text: "Text ", style: TextStyle(color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                      TextSpan(text: "Widget", style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
                    ]
                )
            )


          ],
        ),
      ),
    );
  }
}

