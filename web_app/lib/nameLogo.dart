import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class NamePoint extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {
  final paint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill;

  Path dotPath = Path()
    ..addOval(Rect.fromCircle(center: Offset(50, 50), radius: 10));

  canvas.drawPath(dotPath, paint);
}

@override
bool shouldRepaint(covariant Namelogo oldDelegate) {
  return false;
}
}

class Namelogo extends CustomPainter {
  final double progress; 
  final Offset secondPathOffset;

  Namelogo(this.progress, this.secondPathOffset);

  @override
  void paint(Canvas canvas, Size size) {
    Path name = Path();
    Path point = Path();

    // Define your path exactly as before:
    name.moveTo(0, 18.607079);
    name.cubicTo(0, 18.607079, 1.39182, 23, 4.39182, 23);
    name.cubicTo(10, 23, 16.66193, 0, 12, 0);
    name.cubicTo(7, 0, 7, 20, 12, 20);
    name.cubicTo(21, 20, 25, 13, 20, 13);
    name.cubicTo(14, 13, 14, 23, 20, 23);
    name.cubicTo(24, 23, 25, 13, 30, 13);
    name.cubicTo(35, 13, 34, 23, 28, 23);
    name.cubicTo(24, 23, 26.39235, 9.594899, 33, 14);
    name.cubicTo(36, 16, 38, 7.454282, 38, 14);
    name.lineTo(38, 23);
    name.cubicTo(38, 24, 37.59074, 11.951769, 42, 12);
    name.cubicTo(45.25301, 12.03558, 43.11309, 18.339283, 44, 21);
    name.cubicTo(45, 24, 47, 22, 48.72325, 19.504298);
    name.cubicTo(53.93577, 11.955246, 58.43252, 0, 55, 0);
    name.cubicTo(50, 0, 50.32505, 15.789456, 50.6201, 18.137043);
    name.cubicTo(51.73403, 27, 50.02074, 21.122136, 52, 17);
    name.cubicTo(53.21098, 14.971796, 55, 14, 56, 16);
    name.cubicTo(56.82095, 17.641891, 55.27602, 19.456298, 54.0183, 18.792645);
    name.cubicTo(52.51612, 18, 52.25581, 19.834878, 53, 21);
    name.cubicTo(53.63872, 22, 54, 23, 57, 23);
    name.cubicTo(63, 23, 61.68796, 13.019687, 62, 13);
    name.cubicTo(62.25615, 12.98384, 61.00021, 20.045516, 66, 20);
    name.cubicTo(76.64467, 19.9031, 79.122, 13, 73, 13);
    name.cubicTo(67, 13, 69.29982, 25.995403, 75, 23);
    name.cubicTo(87.57298, 16.392986, 89, 0, 86, 0);
    name.cubicTo(83, 0, 82.92539, 18.115803, 84, 22);
    name.cubicTo(85.38331, 27, 81.36802, 27.104062, 81, 26);
    name.cubicTo(80, 23, 82.53149, 20, 86, 20);
    name.cubicTo(94, 20, 96.36836, 13, 92.36836, 13);
    name.cubicTo(87.36836, 13, 87.01131, 23.300642, 91, 23);
    name.cubicTo(96, 22.623131, 96.55994, 13, 100, 13);
    name.cubicTo(103, 13, 101, 23, 102, 23);
    name.cubicTo(103.07853, 23, 101.31117, 13, 104.58965, 13);
    name.cubicTo(107.56988, 13, 109, 13, 110, 11);

    // Prepare paint
    Paint name_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = const ui.Color.fromARGB(255, 255, 255, 255)
      ..strokeCap = StrokeCap.round;

    //Canvas Scaling
    final bounds = name.getBounds();
    final scaleX = size.width / bounds.width;
    final scaleY = size.height / bounds.height;
    final scale = scaleX < scaleY ? scaleX : scaleY;
    final dx = (size.width - bounds.width * scale) / 2;
    final dy = (size.height - bounds.height * scale) / 2;

    canvas.translate(dx, dy);
    canvas.scale(scale);

    Path dotPath = Path()
      ..addOval(Rect.fromCircle(center: Offset(62, 8) + secondPathOffset, radius: 1));

    //Path Animation
    final pathMetrics = name.computeMetrics().toList();
    final animatedPath = Path();

    for (final metric in pathMetrics) {
      final length = metric.length * progress.clamp(0.0, 1.0);
      animatedPath.addPath(metric.extractPath(0, length), Offset.zero);
    }

    Paint a = Paint()
          ..color = const ui.Color.fromARGB(255, 255, 255, 255);

    final shadowPaint = Paint()
      ..color = const ui.Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = .8 // Same or slightly wider than the main stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 1);

    final shadowPath = animatedPath.shift(const Offset(0.1, 0.1));

    //canvas.drawPath(shadowPath, shadowPaint);

    canvas.drawPath(animatedPath, name_stroke);
    canvas.drawPath(dotPath,a);
  }

  @override
  bool shouldRepaint(covariant Namelogo oldDelegate) {
    return oldDelegate.progress != progress ||
           oldDelegate.secondPathOffset != secondPathOffset;
  }
}