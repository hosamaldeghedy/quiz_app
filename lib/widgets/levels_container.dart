import 'package:flutter/material.dart';

class LevelsContainer extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;

    final path = Path();
    path.moveTo(w * 0.5, 0);
    path.lineTo(w, h * 0.38);
    path.lineTo(w * 0.8, h);
    path.lineTo(w * 0.2, h);
    path.lineTo(0, h * 0.38);
    path.close();

    return path ;
  }

  @override
  bool shouldReclip(covariant oldClipper) {
    return true;
  }

}