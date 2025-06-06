import 'package:flutter/material.dart';
import 'package:location/location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Initialize Location and Get Permissions ------------------
  Location location = Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionStatus;
  late LocationData _locationData;
  late String latitude = "", longitude = "";

  initLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if(!_serviceEnabled){
      _serviceEnabled = await location.requestService();
      if(!_serviceEnabled){
        return;
      }
    }

    _permissionStatus = await location.hasPermission();
    if(_permissionStatus == PermissionStatus.denied){
      _permissionStatus = await location.requestPermission();

      if(_permissionStatus != PermissionStatus.granted){
        return;
      }
    }

    _locationData = await location.getLocation();

    latitude = _locationData.latitude.toString();
    longitude = _locationData.longitude.toString();

    location.enableBackgroundMode(enable: true);
    location.onLocationChanged.listen((LocationData currentLocation){});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initLocation();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Location Package", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 54 ==> Location Package ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Latitude: $latitude"),
            Text("Longitude: $longitude")
          ],
        ),
      ),
    );
  }
}