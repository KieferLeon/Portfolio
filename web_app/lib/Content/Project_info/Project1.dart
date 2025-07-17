import 'package:flutter/material.dart';
import 'package:web_app/Icons/Language_Icons/CSharp.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Swift.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import '../LangsAndFrameworks/LangsAndFrameworks .dart';
import 'dart:ui' as ui;

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import '../Colors.dart';

class Project1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenWidth,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 40,

                          color: ThemeColors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.home_rounded,
                          size: 40,

                          color: ThemeColors.black,
                        ),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamedAndRemoveUntil('/', (route) => false);
                        },
                      ),
                    ],
                  ),
                ),

                Center(
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _ImageStack(),
                        SizedBox(height: 30),
                        Container(
                          width: screenWidth * 0.8,
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.4,
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Sprachen",
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      child: Tech(
                                        icon: CSharpIcon(),
                                        route: "/CSharp",
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: screenWidth * 0.4,
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Frameworks",
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      child: Tech(
                                        icon: FlutterIcon(),
                                        route: "/CSharp",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 200),
                        Container(
                          child: FeatureRow(
                            name: "name",
                            languageGradient: ThemeColors.dartGradient,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureRow extends StatelessWidget {
  final String name;
  final Gradient languageGradient;
  final bool inverted;
  const FeatureRow({
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
        Container(
          width: screenWidth * 0.3,
          height: screenWidth * 0.3,
          color: Colors.amber,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: screenWidth * 0.28,
              height: screenWidth * 0.28,
              child: Image.asset("assets/images3.png", fit: BoxFit.fill),
            ),
          ),
        ),

        SizedBox(width: screenWidth * 0.1),

        Container(
          width: screenWidth * 0.3,
          height: screenWidth * 0.3,
          color: Colors.amber,
        ),
      ],
    );
  }
}

class _ImageStack extends StatefulWidget {
  _ImageStackState createState() => _ImageStackState();
}

class _ImageStackState extends State<_ImageStack> {
  List<String> images = ['assets/images.png', 'assets/images2.png'];
  int imageIndex = 1;
  bool controlVisible = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.4,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              controlVisible = true;
            });
          },
          onExit: (event) {
            setState(() {
              controlVisible = false;
            });
          },
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(images[imageIndex], fit: BoxFit.cover),
                ),
              ),

              controlVisible
                  ? Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 40,
                            color: ThemeColors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              if (imageIndex > 0) {
                                imageIndex--;
                              } else {
                                imageIndex = images.length - 1;
                              }
                            });
                          },
                        ),
                      ),
                    )
                  : SizedBox.shrink(),

              controlVisible
                  ? Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            size: 40,
                            color: ThemeColors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              if (imageIndex == images.length - 1) {
                                imageIndex = 0;
                              } else {
                                imageIndex++;
                              }
                            });
                          },
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
