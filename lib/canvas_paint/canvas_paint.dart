import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Draw_CanvasScreen extends StatefulWidget {
  const Draw_CanvasScreen({super.key});

  @override
  State<Draw_CanvasScreen> createState() => _Draw_CanvasScreenState();
}

class _Draw_CanvasScreenState extends State<Draw_CanvasScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(height: 60.h,width: 100.w,padding: EdgeInsets.all(4.h),
          child: CustomPaint(
            size: Size.infinite,
            painter: PainterClass(),
          ),
        ),
      ),
    );
  }
}

class PainterClass extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15;

    Path p1 = Path();
    p1.moveTo( 0,size.height/1.5);
    p1.lineTo(size.width/2, 0);
    p1.lineTo(size.width,size.height/1.5);
    p1.lineTo(0,size.height/4);
    p1.lineTo(size.width,size.height/4);
    p1.lineTo(0,size.height/1.5);

    canvas.drawPath(p1, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
