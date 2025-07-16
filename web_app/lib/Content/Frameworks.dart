import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import 'package:web_app/Icons/Language_Icons/Dart.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';

import '../Icons/Language_Icons/CSharp.dart';
import '../Icons/Language_Icons/Swift.dart';
import '../Icons/Language_Icons/Language_icon.dart';
import 'Languages.dart';

enum language_Icons { SwiftIcon }

class Frameworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Center(
          child: Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LanguageElement(icon: DotNetIcon(), route: "/DotNet"),
              LanguageElement(icon: UnityIcon(), route: "/Unity"),
              LanguageElement(icon: FlutterIcon(), route: "/Flutter"),
            ],
          ),
        ),
      ),
    );
  }
}
