import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui' as ui;

class LanguageIcon extends CustomPainter {
  bool selected;

  LanguageIcon({this.selected = false});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant LanguageIcon oldDelegate) {
    // repaint if selected changes
    return oldDelegate.selected != selected;
  }
}
