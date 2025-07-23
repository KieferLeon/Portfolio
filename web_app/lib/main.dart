import 'package:flutter/material.dart';

import 'Content/project/main_page/project_overview.dart';

import 'Content/front_page.dart';
import 'Content/tech_skills/main_page/tech_overview.dart';
import 'Content/contact.dart';

import 'initial_data.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 950;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppDataInitializer data = AppDataInitializer();

    return MaterialApp(
      title: 'Leon Kiefer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      debugShowCheckedModeBanner: false,
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
  final AppDataInitializer data;
  const MainPage({super.key, required this.title, required this.data});

  final String title;

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  bool namefocus = true;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 233, 233),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: namefocus
                ? NeverScrollableScrollPhysics()
                : AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: screenHeight * 0.4),
                    SizedBox(
                      height: isMobile(context)
                          ? screenHeight * 1.8
                          : screenHeight * 1.3,
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
                      height: isMobile(context)
                          ? screenHeight * 1.8
                          : screenHeight * 1.3,
                      child: TechOverview(
                        isLanguage: false,
                        techWidgets: [
                          widget.data.dotNet.createTechWidget(size: 300),
                          widget.data.unity.createTechWidget(size: 300),
                          widget.data.flutter.createTechWidget(size: 300),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: isMobile(context)
                          ? screenHeight * 3
                          : screenHeight,
                      child: ProjectOverview(
                        projects: [
                          widget.data.uno.preview,
                          widget.data.unityGame.preview,
                          widget.data.portfolio.preview,
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight, child: Contact()),
                  ],
                ),
                SizedBox(
                  height: screenHeight,
                  child: Stack(
                    children: [
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
              ],
            ),
          );
        },
      ),
    );
  }
}
