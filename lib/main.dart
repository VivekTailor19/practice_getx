import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_getx/counter_app/counter_homeScreen.dart';
import 'package:practice_getx/dataTable_practice/dataTable_practice.dart';
import 'package:practice_getx/location/location_screen.dart';
import 'package:practice_getx/runtime_permission/runtime_homeScreen.dart';
import 'package:practice_getx/runtime_permission/splashScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/dataTable",
        routes: {
          "/":(p0) => CounterScreen(),
          "/runtime":(p0) => RunTime_Splash(),
          "/permission":(p0) =>Permission_Screen(),
          "/location":(p0) => Location_Screen(),
          "/dataTable":(p0) => DataTablePractice()


        },
      ),
    )
  );
}
