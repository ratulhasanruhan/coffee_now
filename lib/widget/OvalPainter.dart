import 'package:coffee_now/util/colors.dart';
import 'package:flutter/material.dart';

class OvalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = primaryColor;

    print(size.width);

    canvas.drawCircle(Offset(size.width/2, size.width * 0.98), size.width, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}