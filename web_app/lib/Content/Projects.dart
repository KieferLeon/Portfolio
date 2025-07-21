import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import 'package:web_app/Icons/nameLogo.dart';

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
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*SizedBox(
                height: screenHeight * 0.8,
                child: ProjectRow(
                  name: "Unity",
                  languageGradient: ThemeColors.cSharpGradient,
                ),
              ),*/
              Container(
                decoration: InnerShadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    InnerShadow.BoxShadow(
                      color: ui.Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      inset: true,
                    ),
                    InnerShadow.BoxShadow(
                      color: ui.Color.fromARGB(140, 255, 255, 255),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(-4, -4),
                      inset: true,
                    ),
                  ],
                ),
                height: screenHeight * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProjectElement(
                      name: "Uno",
                      projectpreview: Projectprerviews.Uno(
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.15,
                      ),
                    ),
                    ProjectElement(
                      name: "Unity Spiel",
                      projectpreview: Projectprerviews.Unity(
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.15,
                      ),
                    ),
                    ProjectElement(
                      name: "Portfolio",
                      projectpreview: Projectprerviews.Portfolio(
                        width: screenWidth * 0.25,
                        height: screenWidth * 0.15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectElement extends StatelessWidget {
  final StatelessWidget projectpreview;
  final String name;

  const ProjectElement({
    super.key,
    required this.projectpreview,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: screenWidth * 0.25 + 30,
          height: screenWidth * 0.15 + 90 + 30,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: ui.Color.fromARGB(60, 0, 0, 0),
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: ui.Color.fromARGB(100, 255, 255, 255),
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(-4, -4),
              ),
            ],
          ),
        ),

        Container(
          width: screenWidth * 0.25,
          height: screenWidth * 0.15 + 90,
          decoration: BoxDecoration(
            color: ThemeColors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(color: ThemeColors.black, fontSize: 60),
              ),
              SizedBox(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
                child: projectpreview,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
