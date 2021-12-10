import 'package:flutter/widgets.dart';

class TopContainerColipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.8);

    path.cubicTo(
      size.width * 0.4,
      size.height,
      size.width * 0.8,
      size.height * 0.6,
      size.width * 0.8,
      0,
    );
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
