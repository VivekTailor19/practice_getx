import 'package:flutter/material.dart';

class Tween2 extends StatefulWidget {
  const Tween2({super.key});

  @override
  State<Tween2> createState() => _Tween2State();
}

class _Tween2State extends State<Tween2> with SingleTickerProviderStateMixin

{

  AnimationController? aniController;

  Animation? sizeH;
  Animation? sizeV;
  Animation? colorT1;
  Animation? colorT2;
  Animation? alignTopL;
  Animation? alignBottomL;
  Animation? alignTopR;
  Animation? alignBottomR;

  @override
  void initState() {
    super.initState();

    aniController = AnimationController(vsync: this, duration: Duration(seconds: 3));

    sizeH = Tween(begin: 60.0,end: 90.0).animate(aniController!);
    sizeV = Tween(begin: 90.0,end: 60.0).animate(aniController!);

    colorT1 = ColorTween(begin: Colors.amber, end: Colors.black)
        .animate(CurvedAnimation(parent: aniController!, curve: Curves.bounceOut));
    colorT2 = ColorTween(begin: Colors.black, end: Colors.amber)
        .animate(CurvedAnimation(parent: aniController!, curve: Curves.bounceOut));

    alignTopL = Tween(begin: Alignment.topLeft,end: Alignment.bottomLeft).animate(aniController!);
    alignBottomL = Tween(begin: Alignment.bottomLeft,end: Alignment.bottomRight).animate(aniController!);
    alignTopR = Tween(begin: Alignment.topRight,end: Alignment.topLeft).animate(aniController!);
    alignBottomR = Tween(begin: Alignment.bottomRight,end: Alignment.topRight).animate(aniController!);

    aniController!.repeat(reverse: true);
    aniController!.addListener(() {setState(() {

    });});

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(20),
          child: Stack(
            children: [
              Align(alignment: alignTopL!.value,child: Container(height: sizeH!.value,width: sizeH!.value,decoration: BoxDecoration(shape: BoxShape.circle,color: colorT1!.value),)),
              Align(alignment: alignBottomL!.value,child: Container(height: sizeV!.value,width: sizeV!.value,decoration: BoxDecoration(shape: BoxShape.circle,color: colorT2!.value),)),
              Align(alignment: alignBottomR!.value,child: Container(height: sizeH!.value,width: sizeH!.value,decoration: BoxDecoration(shape: BoxShape.circle,color: colorT1!.value),)),
              Align(alignment: alignTopR!.value,child: Container(height: sizeV!.value,width: sizeV!.value,decoration: BoxDecoration(shape: BoxShape.circle,color: colorT2!.value),)),

            ],
          ),
        )
      ),
    );
  }
}
