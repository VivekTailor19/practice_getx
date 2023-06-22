import 'dart:math';

import 'package:flutter/material.dart';

class Tween_Animation_Practice extends StatefulWidget {
  const Tween_Animation_Practice({super.key});

  @override
  State<Tween_Animation_Practice> createState() =>
      _Tween_Animation_PracticeState();
}

class _Tween_Animation_PracticeState extends State<Tween_Animation_Practice> with SingleTickerProviderStateMixin {

  AnimationController? animationController;

  //Tween<double>? sizeTween;
  Animation? sizeTween;
  Animation? colorTween;

  //Tween<int>? lengthTween;
  Animation? lengthTween;




  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 1));

    sizeTween =  Tween(begin: 1.0,end: 250.0).animate(animationController!);
    colorTween = ColorTween(begin: Colors.blue, end: Colors.yellow)
        .animate(CurvedAnimation(parent: animationController!, curve: Curves.bounceOut));

    lengthTween = Tween(begin: 150.0,end: 20.0).animate(animationController!);

    animationController!.repeat(reverse: true);
    animationController!.addListener(() {setState(() {

    });});
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff261548),

        body:  Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                //  Text("Tween"),
                  Container(
                    height: sizeTween!.value,
                    width: sizeTween!.value,
                    color: colorTween!.value,
                  ),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //Text("animated builder"),
                  AnimatedBuilder(animation: animationController!, builder: (context, child) {
                    return Transform.rotate(angle: pi*lengthTween!.value,child: child,);

                  },
                  child: Container(height: lengthTween!.value,width:lengthTween!.value,
                    decoration: BoxDecoration(color: colorTween!.value,
                      borderRadius: BorderRadius.circular(150)),),),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
