import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'Colors.dart';

class ExpandableButton extends StatefulWidget {
  Color buttonColor;
  String buttonText;

  ExpandableButton({required this.buttonColor, required this.buttonText});

  @override
  _ExpandableButton createState() => _ExpandableButton();
}

class _ExpandableButton extends State<ExpandableButton> {
  bool textVisible = false;
  final GlobalKey _key = GlobalKey();
  double textHeight = 300;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, 15),
            child: Container(
              decoration: BoxDecoration(
                color: widget.buttonColor,

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
                                text: "Meine persönliche Meinung zu C#\n\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(text: "Ich finde, dass C# eine sehr "),
                              TextSpan(
                                text: "leistungsfähige und vielseitige ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Programmiersprache ist. Besonders gefällt mir die gute Integration in das .NET-Ökosystem und die klare Syntax. Für viele Projekte, von kleinen Anwendungen bis zu großen Enterprise-Lösungen, ist C# eine ausgezeichnete Wahl.\n\n",
                              ),
                              TextSpan(text: "Allerdings "),
                              TextSpan(
                                text:
                                    "kann die Lernkurve für Einsteiger manchmal etwas steil sein",
                                style: TextStyle(fontWeight: FontWeight.bold),
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

                backgroundColor: widget.buttonColor,

                minimumSize: Size(double.infinity, 40),
              ),
              onPressed: () {
                setState(() {
                  textVisible = !textVisible;
                });

                WidgetsBinding.instance.addPostFrameCallback((_) {
                  final RenderBox renderBox =
                      _key.currentContext!.findRenderObject() as RenderBox;
                  setState(() {
                    textHeight = renderBox.size.height;
                  });
                });
              },
              child: Text(widget.buttonText),
            ),
          ),
        ],
      ),
    );
  }
}

class uiNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, size: 40, color: ThemeColors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        IconButton(
          icon: Icon(Icons.home_rounded, size: 40, color: ThemeColors.black),
          onPressed: () {
            Navigator.of(context).popUntil(ModalRoute.withName('/'));
          },
        ),
      ],
    );
  }
}
