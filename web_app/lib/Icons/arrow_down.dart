import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ArrowDown extends CustomPainter {
  Offset point1 = Offset(0, 0);
  Offset point2 = Offset(50, 60);
  Offset point3 = Offset(100, 0);

  ArrowDown(this.point1, this.point2, this.point3);

  @override
  void paint(Canvas canvas, Size size) {
    // Paint configuration

    // Define the arrow path
    final path = Path();
    path.moveTo(point1.dx, point1.dy);
    path.lineTo(point2.dx, point2.dy);
    path.lineTo(point3.dx, point3.dy);

    final Path _referencePath = Path()
      ..moveTo(0, 0)
      ..lineTo(50, 60)
      ..lineTo(100, 0);

    // Scale and center the path to fit the size
    final bounds = _referencePath.getBounds();
    final scaleX = size.width / bounds.width;
    final scaleY = size.height / bounds.height;
    final scale = scaleX < scaleY ? scaleX : scaleY;

    final dx = (size.width - bounds.width * scale) / 2 - bounds.left * scale;
    final dy = (size.height - bounds.height * scale) / 2 - bounds.top * scale;

    final transform = Matrix4.identity()
      ..translate(dx, dy)
      ..scale(scale, scale);

    final paintStyle = Paint()
      ..color = Colors.white
      ..strokeWidth = 15 / scale
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.scale(scale);

    //final transformedPath = path.transform(transform.storage);

    // Draw it
    canvas.drawPath(path, paintStyle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return point1 != (oldDelegate as ArrowDown).point1 ||
        point2 != (oldDelegate as ArrowDown).point2 ||
        point3 != (oldDelegate as ArrowDown).point3;
  }
}
