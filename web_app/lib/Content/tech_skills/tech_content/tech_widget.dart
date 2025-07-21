import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inner_shadow;

import '../../../Icons/Language_Icons/Language_icon.dart';

class TechWidget extends StatefulWidget {
  final TechIcon techIcon;
  final String route;

  const TechWidget({super.key, required this.techIcon, required this.route});

  @override
  TechWidgetState createState() => TechWidgetState();
}

class TechWidgetState extends State<TechWidget> {
  bool isHoverd = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHoverd = true;
          widget.techIcon.selected = true;
        }),
        onExit: (event) => setState(() {
          isHoverd = false;
          widget.techIcon.selected = false;
        }),
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 300,
          height: 300,
          decoration: isHoverd
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 234, 233, 233),
                  boxShadow: [
                    BoxShadow(
                      color: ui.Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(3, 3),
                    ),
                  ],
                )
              : inner_shadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    inner_shadow.BoxShadow(
                      color: ui.Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      inset: true,
                    ),
                  ],
                ),
          child: Container(
            decoration: inner_shadow.BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                inner_shadow.BoxShadow(
                  color: ui.Color.fromARGB(140, 255, 255, 255),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: isHoverd ? Offset(1, 1) : Offset(-4, -4),
                  inset: true,
                ),
              ],
            ),
            child: CustomPaint(size: Size(300, 300), painter: widget.techIcon),
          ),
        ),
      ),
    );
  }
}
