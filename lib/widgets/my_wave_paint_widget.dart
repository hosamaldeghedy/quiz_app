import 'package:flutter/material.dart';

class MyWavePaintWidget extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    Path path = Path() ;
    path.lineTo(0, size.height - 40) ;
    path.quadraticBezierTo(  60, size.height , 130  ,  size.height-40 ) ;
    path.quadraticBezierTo(  180, size.height-65  , 220  ,  size.height-40 ) ;
    path.quadraticBezierTo(  250 , size.height  , 320  ,  size.height-30 ) ;
    path.quadraticBezierTo(  370 , size.height-50 , size.width  ,  size.height) ;
    path.lineTo(size.width, 0) ;

    return path ;
  }

  @override
  bool shouldReclip(covariant oldClipper) {
    return true;
  }

}