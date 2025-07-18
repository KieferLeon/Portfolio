import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:web_app/Content/LangsAndFrameworks/LangsAndFrameworks%20.dart';
import 'package:web_app/Icons/Language_Icons/Language_icon.dart';

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;

import '../../Icons/Language_Icons/CSharp.dart';
import '../Project_info/ProjectPrerview.dart';
import '../Project_info/Project1.dart';

import '../Colors.dart';

class Languageinfo extends StatefulWidget {
  final Color languageColor;
  final List<StatelessWidget> projects;
  final LanguageIcon languageIcon;

  const Languageinfo({
    super.key,
    required this.languageColor,
    required this.projects,
    required this.languageIcon,
  });

  @override
  _Languageinfo createState() => _Languageinfo();
}

class _Languageinfo extends State<Languageinfo> {
  bool textVisible = false;
  final GlobalKey _key = GlobalKey();
  double textHeight = 300;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 40,

                    color: widget.languageColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),

            Center(
              child: CustomPaint(
                size: Size(200, 200),
                painter: widget.languageIcon,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: SizedBox(
                width: 800,
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: Offset(0, 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: widget.languageColor,

                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: AnimatedSize(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          child: Container(
                            padding: textVisible
                                ? EdgeInsets.only(
                                    top: 30,
                                    bottom: 10,
                                    left: 10,
                                    right: 10,
                                  )
                                : null,

                            width: 800,
                            child: textVisible
                                ? RichText(
                                    key: _key,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: ThemeColors.white,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              "Meine persönliche Meinung zu C#\n\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Ich finde, dass C# eine sehr ",
                                        ),
                                        TextSpan(
                                          text:
                                              "leistungsfähige und vielseitige ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "Programmiersprache ist. Besonders gefällt mir die gute Integration in das .NET-Ökosystem und die klare Syntax. Für viele Projekte, von kleinen Anwendungen bis zu großen Enterprise-Lösungen, ist C# eine ausgezeichnete Wahl.\n\n",
                                        ),
                                        TextSpan(text: "Allerdings "),
                                        TextSpan(
                                          text:
                                              "kann die Lernkurve für Einsteiger manchmal etwas steil sein",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ", besonders wenn man mit anderen Programmiersprachen noch nicht viel Erfahrung hat.",
                                        ),
                                      ],
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const ui.Color.fromARGB(100, 0, 0, 0),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          foregroundColor: ThemeColors.white,

                          backgroundColor: widget.languageColor,

                          minimumSize: Size(double.infinity, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            textVisible = !textVisible;
                          });

                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            final RenderBox renderBox =
                                _key.currentContext!.findRenderObject()
                                    as RenderBox;
                            setState(() {
                              textHeight = renderBox.size.height;
                            });
                          });
                        },
                        child: Text("Persöhnliche Meinung"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Projekte",
              style: TextStyle(color: widget.languageColor, fontSize: 60),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.7,
                decoration: InnerShadow.BoxDecoration(
                  color: ThemeColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
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

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widget.projects.take(3).toList(),
                    ),
                    if (widget.projects.length > 3)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: widget.projects.skip(3).toList(),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
