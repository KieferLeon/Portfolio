import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inner_shadow;

import 'package:web_app/Content/ui_elements.dart';
import 'package:web_app/Icons/Language_Icons/tech_icon.dart';
import '../../../colors.dart';

class TechPage extends StatefulWidget {
  final Color techColor;
  final TechIcon techIcon;
  final List<StatelessWidget> projects;

  const TechPage({
    super.key,
    required this.techColor,
    required this.projects,
    required this.techIcon,
  });

  @override
  TechPageState createState() => TechPageState();
}

class TechPageState extends State<TechPage> {
  bool textVisible = false;
  double textHeight = 300;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: UiNavigation(color: widget.techColor),
            ),

            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomPaint(size: Size(200, 200), painter: widget.techIcon),

                  SizedBox(height: 40),

                  ExpandableButton(
                    buttonColor: widget.techColor,
                    buttonText: "Persöhnliche Meinung",
                  ),

                  SizedBox(height: 40),
                  Text(
                    "Projekte",
                    style: TextStyle(color: widget.techColor, fontSize: 60),
                  ),
                  SizedBox(height: 20),

                  Container(
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.7,
                    decoration: inner_shadow.BoxDecoration(
                      color: ThemeColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        inner_shadow.BoxShadow(
                          color: ui.Color.fromARGB(100, 0, 0, 0),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(4, 4),
                          inset: true,
                        ),
                        inner_shadow.BoxShadow(
                          color: ui.Color.fromARGB(140, 255, 255, 255),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(-4, -4),
                          inset: true,
                        ),
                      ],
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 30,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: widget.projects,
                        ),
                        if (widget.projects.length > 3)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: widget.projects,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
