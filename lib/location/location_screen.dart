import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:practice_getx/location/location_controller.dart';

class Location_Screen extends StatefulWidget {
  const Location_Screen({super.key});

  @override
  State<Location_Screen> createState() => _Location_ScreenState();
}

class _Location_ScreenState extends State<Location_Screen> {

  LocationPermission? locationPermission;

  LocationController control = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,backgroundColor: Colors.teal,
          title: Text("Apna Location",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20),),
        ),

        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () async {

                   // if (locationPermission == LocationPermission.denied) {
                      locationPermission = await Geolocator.requestPermission();
                 //  }
                    // else
                    //   {
                    //     locationPermission = await Geolocator.o;
                    //   }


                    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

                    control.lat.value = position.latitude;
                    control.long.value = position.longitude;

                   }, child: Text("Find Coordinates")),

                  Obx(() => Text(
                   // control.lat == 0.0 ? "" :
                    "${control.lat} , ${control.long}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.teal),))
                ],
              ),

              Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () async {

                    List<Placemark> placemarks = await placemarkFromCoordinates(control.lat.value, control.long.value);

                    control.place.value = placemarks[0];

                  }, child: Text("Find Location")),

                  Obx(() => Text(
                    // control.lat == 0.0 ? "" :
                    "${control.place}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.teal),))
                ],
              )

          ],),
        ),
      ),
    );
  }
}
