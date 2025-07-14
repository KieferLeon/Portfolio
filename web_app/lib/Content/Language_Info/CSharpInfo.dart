import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../../Icons/Language_Icons/CSharp.dart';
import '../Colors.dart';

class CSharpinfo extends StatefulWidget {
  _CSharpinfo createState() => _CSharpinfo();
}

class _CSharpinfo extends State<CSharpinfo> {
  bool textVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 15,
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 40),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Center(
                  child: CustomPaint(
                    size: Size(200, 200),
                    painter: CSharpIcon(selected: true),
                  ),
                ),
                SizedBox(height: 180),
                Center(
                  child: SizedBox(
                    width: 800,
                    child: Stack(
                      children: [
                        Transform.translate(
                          offset: Offset(0, 15),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            decoration: BoxDecoration(
                              color: ThemeColors.CSharp,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            width: 800,
                            height: textVisible ? 800 : 0,
                            child: Text("data"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const ui.Color.fromARGB(100, 0, 0, 0),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3), // shadow position
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // match the button radius
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(10),
                              ),
                              foregroundColor: ThemeColors.White,
                              backgroundColor: ThemeColors.CSharp,
                              minimumSize: Size(double.infinity, 40),
                            ),
                            onPressed: () {
                              setState(() {
                                textVisible = !textVisible;
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
                  style: TextStyle(color: Colors.black, fontSize: 60),
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
