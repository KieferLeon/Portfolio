import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web/web.dart';
import 'package:web_app/Content/code_snippets/code_snippets.dart';
import 'package:web_app/Content/project/project_content/project.dart';
import 'package:web_app/Content/tech_skills/main_page/tech_overview.dart';
import 'package:web_app/Content/tech_skills/tech_content/tech.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'Content/project/main_page/project_overview.dart';
import 'Icons/nameLogo.dart';

import 'Content/Frontpage.dart';
import 'Content/Welcomepage.dart';
import 'Content/Contact.dart';

import 'Content/Colors.dart';

import 'Icons/Language_Icons/CSharp.dart';
import 'Icons/Language_Icons/Swift.dart';
import 'Icons/Language_Icons/Dart.dart';
import 'initial_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDataInitializer data = AppDataInitializer();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      title: 'Leon Kiefer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      debugShowCheckedModeBanner: false,
      //home: const MainPage(title: 'Flutter Demo Home Page'),
      routes: {
        "/": (context) => MainPage(title: "Flutter Demo Home Page", data: data),

        "/CSharp": (context) => data.cSharp.techPage,
        "/Swift": (context) => data.swift.techPage,
        "/Dart": (context) => data.dart.techPage,
        "/Unity": (context) => data.unity.techPage,
        "/Flutter": (context) => data.flutter.techPage,
        "/DotNet": (context) => data.dotNet.techPage,
        "/Uno": (context) => data.uno.projectPage,
        "/UnitySpiel": (context) => data.unityGame.projectPage,
        "/Portfolio": (context) => data.portfolio.projectPage,
      },
    );
  }
}

class MainPage extends StatefulWidget {
  AppDataInitializer data;
  MainPage({super.key, required this.title, required this.data});

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
                  child: TechOverview(
                    isLanguage: true,
                    techWidgets: [
                      widget.data.cSharp.createTechWidget(size: 300),
                      widget.data.swift.createTechWidget(size: 300),
                      widget.data.dart.createTechWidget(size: 300),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight * 1.3,
                  child: TechOverview(
                    isLanguage: true,
                    techWidgets: [
                      widget.data.dotNet.createTechWidget(size: 300),
                      widget.data.unity.createTechWidget(size: 300),
                      widget.data.flutter.createTechWidget(size: 300),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenheight,
                  child: ProjectOverview(
                    projects: [
                      widget.data.uno.preview,
                      widget.data.unityGame.preview,
                      widget.data.portfolio.preview,
                    ],
                  ),
                ),
                SizedBox(height: screenheight, child: Contact()),
              ],
            ),
          );
        },
      ),
    );
  }
}
