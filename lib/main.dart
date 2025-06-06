import 'package:flutter/material.dart';
import 'package:flutter_notebook/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

void main() {

  // ----------------------- Setup Provider ------------------
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider())
      ],
      child: const MyApp(),
    )
  );
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
      home: HomeScreen(),
    );
  }
}