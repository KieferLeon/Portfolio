import 'package:flutter/material.dart';

class ArrowDown extends CustomPainter {
  Offset point1 = Offset(0, 0);
  Offset point2 = Offset(50, 60);
  Offset point3 = Offset(100, 0);

  ArrowDown(this.point1, this.point2, this.point3);

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(point1.dx, point1.dy)
      ..lineTo(point2.dx, point2.dy)
      ..lineTo(point3.dx, point3.dy);

    final referencePath = Path()
      ..moveTo(0, 0)
      ..lineTo(50, 60)
      ..lineTo(100, 0);

    final bounds = referencePath.getBounds();
    final scaleX = size.width / bounds.width;
    final scaleY = size.height / bounds.height;
    final scale = scaleX < scaleY ? scaleX : scaleY;

    canvas.save(); // Save the original canvas state
    canvas.translate(
      (size.width - bounds.width * scale) / 2,
      (size.height - bounds.height * scale) / 2,
    );
    canvas.scale(scale);

    final paintStyle = Paint()
      ..color = Colors.white
      ..strokeWidth = 20.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path, paintStyle);
    canvas.restore(); // Restore the original canvas
  }

  @override
  bool shouldRepaint(covariant ArrowDown oldDelegate) {
    return point1 != oldDelegate.point1 ||
        point2 != oldDelegate.point2 ||
        point3 != oldDelegate.point3;
  }
}
