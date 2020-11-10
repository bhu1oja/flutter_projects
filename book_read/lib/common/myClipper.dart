import 'package:flutter/material.dart';


class AppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.3, size.height * 0.9);
    var controlPoint = Offset(size.width * 1, size.height );
    var endPoint = Offset(size.width , size.height * 0.8);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
