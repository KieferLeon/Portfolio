import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;

import '../Icons/Language_Icons/CSharp.dart';
import 'Colors.dart';
import 'Project_info/ProjectPrerview.dart';

class Projects extends StatefulWidget {
  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  int? hoverIndex;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.9,
          height: screenHeight * 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.8,
                child: ProjectRow(
                  name: "Unity",
                  languageGradient: ThemeColors.cSharpGradient,
                ),
              ),

              SizedBox(
                height: screenHeight * 0.8,
                child: ProjectRow(
                  name: "UNO",
                  languageGradient: ThemeColors.cSharpGradient,
                  inverted: true,
                ),
              ),

              SizedBox(
                height: screenHeight * 0.8,
                child: ProjectRow(
                  name: "Diese Website",
                  languageGradient: ThemeColors.dartGradient,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectRow extends StatelessWidget {
  final String name;
  final Gradient languageGradient;
  final bool inverted;
  const ProjectRow({
    super.key,
    required this.name,
    required this.languageGradient,
    this.inverted = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: inverted ? TextDirection.rtl : null,
      children: [
        SizedBox(
          width: screenWidth * 0.5,
          height: screenWidth * 0.3,
          child: Projectprerviews.project1(
            width: screenWidth * 0.5,
            height: screenWidth * 0.3,
          ),
        ),

        SizedBox(width: screenWidth * 0.1),

        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/Project1");
            },
            child: Container(
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: languageGradient,
                boxShadow: [
                  BoxShadow(
                    color: ui.Color.fromARGB(100, 0, 0, 0),
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Container(
                decoration: InnerShadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    InnerShadow.BoxShadow(
                      color: ui.Color.fromARGB(140, 255, 255, 255),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                      inset: true,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 80, color: ThemeColors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
