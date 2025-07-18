import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/Icons/Language_Icons/CSharp.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Swift.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import '../LangsAndFrameworks/LangsAndFrameworks .dart';
import 'dart:ui' as ui;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import '../Colors.dart';

import '../ui_elements.dart';

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
                        Text("Unity", style: TextStyle(fontSize: 140)),
                        SizedBox(height: 50),
                        ExpandableButton(
                          buttonColor: ThemeColors.unity,
                          buttonText: "Beschreibung",
                        ),
                        SizedBox(height: 50),
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
                        FeatureGrid(),
                        SizedBox(height: 200),
                        FeatureGrid(),
                        SizedBox(height: 100),

                        GitHubButton(),
                        SizedBox(height: 200),
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

class FeatureGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 0.9,
      height: screenHeight * 2,
      child: StaggeredGrid.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,

        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(color: Colors.red),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(color: Colors.green),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(color: Colors.blue),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(color: Colors.yellow),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(color: Colors.purple),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 5,
            mainAxisCellCount: 1,
            child: Container(color: Colors.pink),
          ),
        ],
      ),
    );
  }
}

class GitHubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 80,
      decoration: BoxDecoration(
        color: ThemeColors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "View On Github",
              style: TextStyle(fontSize: 40, color: ThemeColors.white),
            ),

            SvgPicture.asset("assets/git_hub_logo.svg", width: 60, height: 60),
          ],
        ),
      ),
    );
  }
}
