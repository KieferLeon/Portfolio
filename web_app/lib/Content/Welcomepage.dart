import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    final textOffset = Offset(
      -screenwidth * 0.1,
      -screenheight * 0.1,
    ); //Percentage

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Transform.translate(
          offset: textOffset,
          child: Text("Hi mein Name ist Leon", style: TextStyle(fontSize: 42)),
        ),
      ),
    );
  }
}
