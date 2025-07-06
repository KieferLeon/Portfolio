import 'dart:ui' as ui;
import 'package:flutter/material.dart';
  
  
  class Background extends CustomPainter {
    @override
  void paint(Canvas canvas, Size size) {
    // Top-right gradient
    final topRightGradient = ui.Gradient.radial(
      Offset(size.width - 100, 100),
      200,
      [
        const Color.fromARGB(150, 16, 185, 129), // greenish
        Colors.transparent,
      ],
    );

    final bottomLeftGradient = ui.Gradient.radial(
      Offset(100, size.height - 100),
      220,
      [
        const Color.fromARGB(150, 59, 130, 246), // blueish
        Colors.transparent,
      ],
    );

    final paint1 = Paint()..shader = topRightGradient;
    final paint2 = Paint()..shader = bottomLeftGradient;

    canvas.drawCircle(Offset(size.width - 100, 100), 200, paint1);
    canvas.drawCircle(Offset(100, size.height - 100), 220, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
  }
