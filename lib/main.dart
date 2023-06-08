import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_getx/counter_app/counter_homeScreen.dart';
import 'package:practice_getx/runtime_permission/runtime_homeScreen.dart';
import 'package:practice_getx/runtime_permission/splashScreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "runtime",
      routes: {
        "/":(p0) => CounterScreen(),
        "runtime":(p0) => RunTime_Splash(),
        "permission":(p0) =>Permission_Screen(),


      },
    )
  );
}
