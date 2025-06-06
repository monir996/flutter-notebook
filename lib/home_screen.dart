import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Initialize Device Info ------------------
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  late AndroidDeviceInfo androidDeviceInfo;
  late IosDeviceInfo iosDeviceInfo;
  late WebBrowserInfo webBrowserInfo;

  getAndroidDeviceInfo()async {
    androidDeviceInfo = await deviceInfoPlugin.androidInfo;
    setState(() {});
  }

  getIosDeviceInfo()async {
    iosDeviceInfo = await deviceInfoPlugin.iosInfo;
    setState(() {});
  }

  getWebBrowserInfo()async {
    webBrowserInfo = await deviceInfoPlugin.webBrowserInfo;
    setState(() {});
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAndroidDeviceInfo();
    getIosDeviceInfo();
    getWebBrowserInfo();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Device Info", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 55 ==> Device Info ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Android Model: ${androidDeviceInfo.model.toString()}"),
            Text("Android Manufacturer: ${androidDeviceInfo.manufacturer.toString()}"),
          ],
        ),
      ),
    );
  }
}