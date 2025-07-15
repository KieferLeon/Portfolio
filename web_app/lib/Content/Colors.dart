import 'package:flutter/material.dart';

class ThemeColors {
  static const white = Color.fromARGB(255, 234, 233, 233);


  static const cSharp = Color.fromARGB(255, 81, 43, 212);
  static const swift = Color.fromARGB(255, 228, 77, 38);
  static const dart = Color.fromARGB(255, 1, 117, 194);

 main

  static const primary1 = Color.fromARGB(255, 192, 74, 169);
  static const primary2 = Color.fromARGB(255, 152, 74, 194);

  static const themeGradient = LinearGradient(
    colors: [primary1, primary2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
