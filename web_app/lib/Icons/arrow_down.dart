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

    final Path referencePath = Path()
      ..moveTo(0, 0)
      ..lineTo(50, 60)
      ..lineTo(100, 0);

    // Scale and center the path to fit the size
    final bounds = referencePath.getBounds();
    final scaleX = size.width / bounds.width;
    final scaleY = size.height / bounds.height;
    final scale = scaleX < scaleY ? scaleX : scaleY;

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
        point2 != (oldDelegate).point2 ||
        point3 != (oldDelegate).point3;
  }
}
