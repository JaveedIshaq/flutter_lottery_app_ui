import 'package:flutter/material.dart';

/// Arc Clipper
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    // ignore: cascade_invocations
    path.lineTo(0, size.height - 70);

    final Offset firstControlPoint = Offset(size.width / 4, size.height);
    final Offset firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    final Offset secondControlPoint =
        Offset(size.width - (size.width / 4), size.height);
    final Offset secondPoint = Offset(size.width, size.height - 70);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);
    return path
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
