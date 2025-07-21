import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

class TechIcon extends CustomPainter {
  bool selected;

  TechIcon({this.selected = false});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant TechIcon oldDelegate) {
    // repaint if selected changes
    return oldDelegate.selected != selected;
  }
}
