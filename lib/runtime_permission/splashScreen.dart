import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RunTime_Splash extends StatefulWidget {
  const RunTime_Splash({super.key});

  @override
  State<RunTime_Splash> createState() => _RunTime_SplashState();
}

class _RunTime_SplashState extends State<RunTime_Splash> {


  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),() {
      Get.toNamed("permission");
    },);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Image.network("https://e1.pxfuel.com/desktop-wallpaper/571/845/desktop-wallpaper-3840x2160-lock-system-words-matrix-screen-hacker-u-16-9-backgrounds-windows-10-computer-hacker.jpg",
            height: 300,width: 360,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
