import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TechIcon extends CustomPainter {
  bool selected;

  TechIcon({required this.selected});

  TechIcon clone() {
    return TechIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant TechIcon oldDelegate) {
    return true;
  }
}
