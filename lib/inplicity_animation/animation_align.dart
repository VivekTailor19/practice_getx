import 'package:flutter/material.dart';

class Animation_Align extends StatefulWidget {
  const Animation_Align({super.key});

  @override
  State<Animation_Align> createState() => _Animation_AlignState();
}

class _Animation_AlignState extends State<Animation_Align> {

  int i = 0;
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: GestureDetector(onTap: () {
          setState(() {
            i++;
          });
        },
        child: AnimatedAlign(
            alignment: i%3==0 ? Alignment.topLeft : i%3==1 ? Alignment.center : Alignment.bottomRight,
            duration: i%3==0 ? Duration(seconds: 1) : i%3==1 ? Duration(seconds: 1) : Duration(seconds: 3) ,
            child: FlutterLogo(
              size: i%3==0 ? 100 : i%3==1 ? 150 : 125,
              style: FlutterLogoStyle.markOnly,
            ))),
      ),
    );
  }
}
