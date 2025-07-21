import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web/web.dart';
import 'package:web_app/Content/code_snippets/code_snippets.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'Icons/nameLogo.dart';

import 'Content/Frontpage.dart';
import 'Content/Welcomepage.dart';
import 'Content/LangsAndFrameworks/LangsAndFrameworks .dart';
import 'Content/Contact.dart';
import 'Content/LangsAndFrameworks/LangsAndFrameworksInfo.dart';
import 'Content/Project_info/ProjectInfo.dart';
import 'Content/Projects.dart';

import 'Content/Colors.dart';
import 'Content/Project_info/ProjectPrerview.dart';

import 'Icons/Language_Icons/CSharp.dart';
import 'Icons/Language_Icons/Swift.dart';
import 'Icons/Language_Icons/Dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      debugShowCheckedModeBanner: false,
      //home: const MainPage(title: 'Flutter Demo Home Page'),
      routes: {
        "/": (context) => const MainPage(title: "Flutter Demo Home Page"),

        "/CSharp": (context) => Languageinfo(
          languageColor: ThemeColors.cSharp,
          projects: [
            ProjectElement(
              name: "Uno",
              projectpreview: Projectprerviews.Uno(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
              ),
            ),
            ProjectElement(
              name: "Unity",
              projectpreview: Projectprerviews.Unity(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
              ),
            ),
          ],
          languageIcon: CSharpIcon(selected: true),
        ),
        "/Swift": (context) => Languageinfo(
          languageColor: ThemeColors.swift,
          projects: [],
          languageIcon: SwiftIcon(selected: true),
        ),
        "/Dart": (context) => Languageinfo(
          languageColor: ThemeColors.dart,
          projects: [],
          languageIcon: DartIcon(selected: true),
        ),
        "/Unity": (context) => Languageinfo(
          languageColor: ThemeColors.unity,
          projects: [
            ProjectElement(
              name: "Unity",
              projectpreview: Projectprerviews.Unity(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
              ),
            ),
          ],
          languageIcon: UnityIcon(selected: true),
        ),
        "/Flutter": (context) => Languageinfo(
          languageColor: ThemeColors.dart,
          projects: [],
          languageIcon: FlutterIcon(selected: true),
        ),
        "/DotNet": (context) => Languageinfo(
          languageColor: ThemeColors.dotNet,
          projects: [
            ProjectElement(
              name: "Uno",
              projectpreview: Projectprerviews.Uno(
                width: screenWidth * 0.25,
                height: screenWidth * 0.15,
              ),
            ),
          ],
          languageIcon: DotNetIcon(selected: true),
        ),
        "/Uno": (context) => ProjectInfo(
          name: "Uno",
          framework: Tech(icon: DotNetIcon(selected: false), route: "/DotNet"),
          language: Tech(icon: CSharpIcon(selected: false), route: "/CSharp"),
          videoPath: "assets/project_images/unity/unity_gameplay.mp4",
          filenames: CodeSnippetLibary.cSharp.filenames,
          codeSnippetsContent: [
            CodeSnippetLibary.cSharp.sortHand(screenHeight * 0.04),
            CodeSnippetLibary.cSharp.cardHover(screenHeight * 0.035),
            CodeSnippetLibary.cSharp.nextTurn(screenHeight * 0.04),
          ],
          github: false,
        ),
        "/UnityProject": (context) => ProjectInfo(
          name: "Unity Spiel",
          framework: Tech(icon: UnityIcon(selected: false), route: "/Unity"),
          language: Tech(icon: CSharpIcon(selected: false), route: "/CSharp"),
          videoPath: "assets/project_images/unity/unity_gameplay.mp4",

          filenames: CodeSnippetLibary.unity.filenames,
          codeSnippetsContent: [
            CodeSnippetLibary.unity.attack(screenHeight * 0.04),
            CodeSnippetLibary.unity.getDamage(screenHeight * 0.04),
            CodeSnippetLibary.unity.roomSpawning(screenHeight * 0.034),
          ],
          github: false,
        ),
        "/Portfolio": (context) => ProjectInfo(
          name: "Portfolio",
          framework: Tech(
            icon: FlutterIcon(selected: false),
            route: "/Flutter",
          ),
          language: Tech(icon: DartIcon(selected: false), route: "/Dart"),
          videoPath: "assets/project_images/unity/unity_gameplay.mp4",

          filenames: CodeSnippetLibary.unity.filenames,
          codeSnippetsContent: [
            CodeSnippetLibary.portfolio.animaiton(screenHeight * 0.04),
            CodeSnippetLibary.portfolio.project(screenHeight * 0.04),
            CodeSnippetLibary.portfolio.language(screenHeight * 0.04),
          ],
          github: false,
        ),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  bool namefocus = true;

  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 233),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: namefocus
                ? NeverScrollableScrollPhysics()
                : AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: screenheight,
                  child: Stack(
                    children: [
                      Welcomepage(),
                      Frontpage(
                        focusout: () {
                          setState(() {
                            namefocus = false;
                          });
                        },
                        focusin: () {
                          setState(() {
                            namefocus = true;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight * 1.3,
                  child: LangsAndFrameworks(isLang: true),
                ),
                SizedBox(
                  height: screenheight * 1.3,
                  child: LangsAndFrameworks(),
                ),
                SizedBox(height: screenheight, child: Projects()),
                SizedBox(height: screenheight, child: Contact()),
              ],
            ),
          );
        },
      ),
    );
  }
}
