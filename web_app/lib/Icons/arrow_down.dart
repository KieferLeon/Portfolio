import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ArrowDown extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint configuration
    final paintStyle = Paint()
      ..color = Colors.white
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    // Define the arrow path
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(50, 60);
    path.lineTo(100, 0);

    // Scale and center the path to fit the size
    final bounds = path.getBounds();
    final scaleX = size.width / bounds.width;
    final scaleY = size.height / bounds.height;
    final scale = scaleX < scaleY ? scaleX : scaleY;

    final dx = (size.width - bounds.width * scale) / 2 - bounds.left * scale;
    final dy = (size.height - bounds.height * scale) / 2 - bounds.top * scale;

    final transform = Matrix4.identity()
      ..translate(dx, dy)
      ..scale(scale, scale);

    final transformedPath = path.transform(transform.storage);

    // Draw it
    canvas.drawPath(transformedPath, paintStyle);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}