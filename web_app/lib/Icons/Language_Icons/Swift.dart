import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Language_icon.dart';
import 'dart:ui' as ui;

class SwiftIcon extends LanguageIcon {
  bool selected;

  SwiftIcon({this.selected = false});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    path = Path();
    path.moveTo(size.width * 0.6917375, size.height * 0.7897344);
    path.cubicTo(
      size.width * 0.5885938,
      size.height * 0.8490625,
      size.width * 0.4467719,
      size.height * 0.8551594,
      size.width * 0.3040872,
      size.height * 0.7942687,
    );
    path.cubicTo(
      size.width * 0.1885584,
      size.height * 0.7453281,
      size.width * 0.09269969,
      size.height * 0.6596563,
      size.width * 0.03125000,
      size.height * 0.5617719,
    );
    path.cubicTo(
      size.width * 0.06074594,
      size.height * 0.5862437,
      size.width * 0.09515719,
      size.height * 0.6058281,
      size.width * 0.1320263,
      size.height * 0.6229500,
    );
    path.cubicTo(
      size.width * 0.2793781,
      size.height * 0.6917188,
      size.width * 0.4267000,
      size.height * 0.6870094,
      size.width * 0.5303750,
      size.height * 0.6231250,
    );
    path.cubicTo(
      size.width * 0.3828937,
      size.height * 0.5105437,
      size.width * 0.2573831,
      size.height * 0.3635188,
      size.width * 0.1639844,
      size.height * 0.2436084,
    );
    path.cubicTo(
      size.width * 0.1443122,
      size.height * 0.2240272,
      size.width * 0.1295641,
      size.height * 0.1995522,
      size.width * 0.1148162,
      size.height * 0.1775262,
    );
    path.cubicTo(
      size.width * 0.2278828,
      size.height * 0.2803169,
      size.width * 0.4073219,
      size.height * 0.4100219,
      size.width * 0.4712156,
      size.height * 0.4467500,
    );
    path.cubicTo(
      size.width * 0.3360469,
      size.height * 0.3047878,
      size.width * 0.2155969,
      size.height * 0.1285844,
      size.width * 0.2205031,
      size.height * 0.1334697,
    );
    path.cubicTo(
      size.width * 0.4343531,
      size.height * 0.3488438,
      size.width * 0.6334594,
      size.height * 0.4712188,
      size.width * 0.6334594,
      size.height * 0.4712188,
    );
    path.cubicTo(
      size.width * 0.6400469,
      size.height * 0.4749188,
      size.width * 0.6451313,
      size.height * 0.4779969,
      size.width * 0.6492187,
      size.height * 0.4807500,
    );
    path.cubicTo(
      size.width * 0.6535281,
      size.height * 0.4698344,
      size.width * 0.6573062,
      size.height * 0.4585000,
      size.width * 0.6604906,
      size.height * 0.4467500,
    );
    path.cubicTo(
      size.width * 0.6949000,
      size.height * 0.3219313,
      size.width * 0.6555844,
      size.height * 0.1799688,
      size.width * 0.5695438,
      size.height * 0.06250000,
    );
    path.cubicTo(
      size.width * 0.7686312,
      size.height * 0.1824225,
      size.width * 0.8866281,
      size.height * 0.4075781,
      size.width * 0.8374531,
      size.height * 0.5960375,
    );
    path.cubicTo(
      size.width * 0.8361719,
      size.height * 0.6011219,
      size.width * 0.8347781,
      size.height * 0.6061406,
      size.width * 0.8332750,
      size.height * 0.6110688,
    );
    path.cubicTo(
      size.width * 0.9315813,
      size.height * 0.7334469,
      size.width * 0.9062750,
      size.height * 0.8652625,
      size.width * 0.8939875,
      size.height * 0.8407906,
    );
    path.cubicTo(
      size.width * 0.8406562,
      size.height * 0.7368781,
      size.width * 0.7419313,
      size.height * 0.7686531,
      size.width * 0.6917375,
      size.height * 0.7897344,
    );
    path.close();

    Paint paint_fill = Paint()..style = PaintingStyle.fill;
    paint_fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.4690719, size.height * 0.06250000),
      Offset(size.width * 0.4690719, size.height * 0.8437906),
      selected
          ? [Color(0xffF88A36).withOpacity(1), Color(0xffFD2020).withOpacity(1)]
          : [
              Color(0xFFA1A1A1).withOpacity(1),
              Color(0xFF636363).withOpacity(1),
            ],
      [0, 1],
    );
    canvas.drawPath(path, paint_fill);
  }

  @override
  bool shouldRepaint(covariant SwiftIcon oldDelegate) {
    // Repaint only if 'selected' changed
    return oldDelegate.selected != selected;
  }
}
