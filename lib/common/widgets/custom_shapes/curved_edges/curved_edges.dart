import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstPoint = Offset(0, size.height - 20);
    final secondPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(firstPoint.dx, firstPoint.dy, secondPoint.dx, secondPoint.dy);

    final sFirstPoint = Offset(0, size.height - 20);
    final sSecondPoint = Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(sFirstPoint.dx, sFirstPoint.dy, sSecondPoint.dx, sSecondPoint.dy);

    final tFirstPoint = Offset(size.width, size.height - 20);
    final tSecondPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(tFirstPoint.dx, tFirstPoint.dy, tSecondPoint.dx, tSecondPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}
