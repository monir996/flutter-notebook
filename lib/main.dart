import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../home_page.dart';

// ----------------------- After Setup Splash Screen on Yaml File ------------------
// Run this command in terminal ===> dart run flutter_native_splash:create --path=native_splash.yaml
/*
* Logo Image ==> 600 x 600 px
* Background Image ==> 1290 x 2796 px
* Branding Image ==> 750 x 750 px
*
*  Android 12 and Above:
*   - Logo Image ==> 768px Circle inside 1152px Square
*   - Branding Image ==> 600 x 240 px
* */

void main() async {

  // ----------------- For Splash Screen --------------
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //await Future.delayed(Duration(seconds: 3));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  /*-------------------- For Splash Screen ---------------------*/
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initialization();
  }

  void initialization() async {
    print('pausing...');
    await Future.delayed(Duration(seconds: 3));
    print('UnPausing...');
    FlutterNativeSplash.remove();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Notebook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
    );
  }
}
