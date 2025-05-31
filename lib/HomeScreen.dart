import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 17 ==> Toast Widget ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ----------------------- Stylish Toast ------------------

            TextButton(
                onPressed: (){

                  DelightToastBar(
                    builder: (context) {
                      return const ToastCard(
                          leading: Icon(Icons.notifications_active, size: 32),
                          title: Text("Toast Message", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14))
                      );
                    },
                    position: DelightSnackbarPosition.top,
                    autoDismiss: true,
                    snackbarDuration: Duration(milliseconds: 2000)
                  ).show(context);

                },
                child: Text("Stylish Toast")
            ),

            SizedBox(height: 20),

            // ----------------------- Normal Toast ------------------

            TextButton(
                onPressed: (){
                  Fluttertoast.showToast(
                      msg: "Toast Message",
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.5)
                  );
                },
                child: Text("Normal Toast")
            ),
          ],
        ),
      ),
    );
  }
}