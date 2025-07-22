import 'package:flutter/material.dart';

class ThemeColors {
  static const white = Color.fromARGB(255, 234, 233, 233);
  static const black = Color.fromARGB(255, 18, 18, 18);
  static const grey = Color.fromARGB(255, 140, 140, 140);

  static const cSharp = Color.fromARGB(255, 81, 43, 212);
  static const cSharpGradient = LinearGradient(
    colors: [Color(0xff927BE5), Color(0xff512BD4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const swift = Color.fromARGB(255, 228, 77, 38);
  static const swiftGradient = LinearGradient(
    begin: Alignment(0.0, -0.875),
    end: Alignment(0.0, 0.6876),
    colors: [
      Color(0xFFF88A36), // Orange
      Color(0xFFFD2020), // Red
    ],
    stops: [0.0, 1.0],
  );

  static const dart = Color.fromARGB(255, 1, 117, 194);
  static const dartGradient = LinearGradient(
    colors: [Color(0xff55c1f3), Color(0xff0175c2)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const Color unity = Color(0xFF000000);
  static const Color dotNet = Color(0xff6a1b9a);

  static const primary1 = Color.fromARGB(255, 192, 74, 169);
  static const primary2 = Color.fromARGB(255, 152, 74, 194);
  static const codeBackground = Color.fromARGB(255, 71, 68, 68);
  static const codeBackgroundDark = Color.fromARGB(255, 60, 58, 58);

  static const themeGradient = LinearGradient(
    colors: [primary1, primary2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
