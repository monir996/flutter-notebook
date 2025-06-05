import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Exception Handle ------------------
  Future<void> _launchUrl(Uri url) async {
    if(!await launchUrl(url)){
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("URL Launcher", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 40 ==> URL Launcher Widget ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ----------------------- Launch URL ------------------
            CupertinoButton.filled(
                onPressed: (){
                  final Uri url = Uri.parse('https://google.com/');
                  _launchUrl(url);
                },
                child: Text("Go to google")
            ),

            SizedBox(height: 20),

            // ----------------------- Call ------------------
            CupertinoButton.filled(
                onPressed: (){

                  String number = "+8801096543908";
                  final Uri url = Uri.parse('tel:$number');
                  _launchUrl(url);
                },
                child: Text("Call us")
            ),

            SizedBox(height: 20),

            // ----------------------- SMS ------------------
            CupertinoButton.filled(
                onPressed: (){

                  String number = "+8801096543908";
                  final Uri url = Uri.parse('sms:$number');
                  _launchUrl(url);
                },
                child: Text("Send sms")
            ),

          ],
        ),
      ),
    );
  }
}