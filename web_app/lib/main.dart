import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'language_cards/CSharpCard.dart';
import 'Icons/nameLogo.dart';

import 'Content/Frontpage.dart';
import 'Content/Welcomepage.dart';
import 'Content/Languages.dart';
import 'Content/Contact.dart';
import 'Content/Language_Info/CSharpInfo.dart';
import 'Content/Project_info/Project1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      //home: const MainPage(title: 'Flutter Demo Home Page'),
      routes: {
        "/": (context) => const MainPage(title: "Flutter Demo Home Page"),
        "/CSharp": (context) => CSharpinfo(),
        "/Project1": (context) => Project1(),
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
                SizedBox(height: screenheight, child: Languages()),
                SizedBox(height: screenheight, child: Contact()),
              ],
            ),
          );
        },
      ),
    );
  }
}
