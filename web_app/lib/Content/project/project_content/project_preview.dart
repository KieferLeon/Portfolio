import 'package:flutter/material.dart';
import '../../colors.dart';
import 'dart:ui' as ui;

class ProjectElement extends StatelessWidget {
  final String name;
  final String imageRoute;
  final String projectRoute;
  final Color projectColor;

  const ProjectElement({
    super.key,
    required this.name,
    required this.imageRoute,
    required this.projectRoute,
    required this.projectColor,
  });

  @override
  Widget build(BuildContext context) {
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
              Text(name, style: TextStyle(color: projectColor, fontSize: 60)),
              SizedBox(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
                child: ProjektPreview(
                  imageRoute: imageRoute,
                  projectRoute: projectRoute,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProjektPreview extends StatefulWidget {
  final double? height;
  final double? width;
  final String projectRoute;
  final String imageRoute;

  const ProjektPreview({
    super.key,
    this.height,
    this.width,
    required this.imageRoute,
    required this.projectRoute,
  });

  @override
  State<ProjektPreview> createState() => _ProjektPreviewState();
}

class _ProjektPreviewState extends State<ProjektPreview> {
  late double height;
  late double width;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final screenWidth = MediaQuery.of(context).size.width;

    width = widget.width ?? screenWidth * 0.25;
    height = widget.height ?? screenWidth * 0.15;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, widget.projectRoute);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(widget.imageRoute),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
