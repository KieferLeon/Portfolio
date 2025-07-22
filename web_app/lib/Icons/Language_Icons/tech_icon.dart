import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TechIcon extends CustomPainter {
  bool selected;

  TechIcon({this.selected = false});

  TechIcon clone() {
    return TechIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant TechIcon oldDelegate) {
    return oldDelegate.selected != selected;
  }
}
