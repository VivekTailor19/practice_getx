import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First_Hero extends StatefulWidget {
  const First_Hero({super.key});

  @override
  State<First_Hero> createState() => _First_HeroState();
}

class _First_HeroState extends State<First_Hero> {

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: GestureDetector(
        onTap: () => Get.toNamed("/shero"),

        child: Hero(tag: "logo",transitionOnUserGestures: true,
            child: FlutterLogo(size: 100, curve: Curves.bounceInOut)),
      ),
          ),




    );
  }
}