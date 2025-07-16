import 'package:flutter/material.dart';
import 'package:web_app/Content/Colors.dart';
import 'package:web_app/Icons/Language_Icons/CSharp.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Swift.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import '../Languages.dart';

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
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 40,

                      color: Colors.amberAccent,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                Center(
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.amber,
                          width: screenWidth * 0.4,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Image.asset(
                              'assets/images.png',
                              fit: BoxFit
                                  .cover, // This makes the image fill the whole space
                            ),
                          ),
                        ),
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
                                      child: LanguageElement(
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
                                      child: LanguageElement(
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
                        SizedBox(),
                        Container(),
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
