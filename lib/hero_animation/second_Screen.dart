import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Second_Hero extends StatefulWidget {
  const Second_Hero({super.key});

  @override
  State<Second_Hero> createState() => _Second_HeroState();
}

class _Second_HeroState extends State<Second_Hero> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(height: 100.h,
        width: 100.w,
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
        child:
        GestureDetector(
          onTap: () => Get.toNamed("/fhero"),
          child: Hero(tag: "logo",
              child: FlutterLogo(size: 100, curve: Curves.bounceInOut)),
        ),

      ),
    ),
    );
  }
}