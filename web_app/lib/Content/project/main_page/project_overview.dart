import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inner_shadow;
import 'package:web_app/Content/colors.dart';
import 'package:web_app/main.dart';

import '../project_content/project_preview.dart';

class ProjectOverview extends StatefulWidget {
  final List<ProjectElement> projects;

  const ProjectOverview({super.key, required this.projects});

  @override
  ProjectOverviewState createState() => ProjectOverviewState();
}

class ProjectOverviewState extends State<ProjectOverview> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        width: screenWidth * 0.9,
        height: isMobile(context) ? screenHeight * 3 : screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: inner_shadow.BoxDecoration(
                color: ThemeColors.white,
                borderRadius: BorderRadius.circular(20),
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
              height: isMobile(context)
                  ? screenHeight * 1.6
                  : screenHeight * 0.8,
              width: screenWidth * 0.9,
              child: isMobile(context)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.projects,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.projects,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
