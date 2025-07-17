import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import 'package:web_app/Icons/Language_Icons/Dart.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';

import '../Colors.dart';

import '../../Icons/Language_Icons/CSharp.dart';
import '../../Icons/Language_Icons/Swift.dart';
import '../../Icons/Language_Icons/Language_icon.dart';

class LangsAndFrameworks extends StatelessWidget {
  bool isLang;

  LangsAndFrameworks({this.isLang = false});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    List<Tech> techelements;

    if (isLang) {
      techelements = [
        Tech(icon: CSharpIcon(), route: "/CSharp"),
        Tech(icon: SwiftIcon(), route: "/Swift"),
        Tech(icon: DartIcon(), route: "/Dart"),
      ];
    } else {
      techelements = [
        Tech(icon: DotNetIcon(), route: "/DotNet"),
        Tech(icon: UnityIcon(), route: "/Unity"),
        Tech(icon: FlutterIcon(), route: "/Flutter"),
      ];
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isLang ? "Sprachen" : "Frameworks",
                style: TextStyle(fontSize: 80),
              ),

              SizedBox(height: 40),

              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: techelements,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tech extends StatefulWidget {
  final LanguageIcon icon;
  final String route;

  const Tech({Key? key, required this.icon, required this.route})
    : super(key: key);

  _Lang createState() => _Lang();
}

class _Lang extends State<Tech> {
  bool isHoverd = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHoverd = true;
          widget.icon.selected = true;
        }),
        onExit: (event) => setState(() {
          isHoverd = false;
          widget.icon.selected = false;
        }),
        cursor: SystemMouseCursors.click,
        child: Container(
          width: 300,
          height: 300,
          decoration: isHoverd
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 234, 233, 233),
                  boxShadow: [
                    BoxShadow(
                      color: ui.Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(3, 3),
                    ),
                  ],
                )
              : InnerShadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    InnerShadow.BoxShadow(
                      color: ui.Color.fromARGB(100, 0, 0, 0),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: Offset(4, 4),
                      inset: true,
                    ),
                  ],
                ),
          child: Container(
            decoration: InnerShadow.BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                InnerShadow.BoxShadow(
                  color: ui.Color.fromARGB(140, 255, 255, 255),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: isHoverd ? Offset(1, 1) : Offset(-4, -4),
                  inset: true,
                ),
              ],
            ),
            child: CustomPaint(size: Size(300, 300), painter: widget.icon),
          ),
        ),
      ),
    );
  }
}
