import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import 'Colors.dart';

import 'Sticker.dart';

class Contact extends StatefulWidget {
  _Contact createState() => _Contact();
}

class _Contact extends State<Contact> {
  var emailHoverd = false;

  final List<double> _parallaxFactors = [0.03, 0.06, 0.09];

  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0;
  final GlobalKey _stickerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        final renderBox =
            _stickerKey.currentContext?.findRenderObject() as RenderBox?;
        if (renderBox != null) {
          final position = renderBox.localToGlobal(Offset.zero);
          _scrollOffset = position.dy; // how far from the top of the screen
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Senden Sie mir gerne eine E-Mail",
              style: TextStyle(fontSize: 42),
            ),
            SizedBox(height: 30),
            Container(
              width: 600,
              height: 90,
              decoration: emailHoverd
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      color: ThemeColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: ui.Color.fromARGB(100, 0, 0, 0),
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(1, 1),
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
                width: double.infinity,
                height: double.infinity,
                decoration: InnerShadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    InnerShadow.BoxShadow(
                      color: ui.Color.fromARGB(140, 255, 255, 255),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: emailHoverd ? Offset(1, 1) : Offset(-4, -4),
                      inset: true,
                    ),
                  ],
                ),
                child: GestureDetector(
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        emailHoverd = true;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        emailHoverd = false;
                      });
                    },
                    cursor: SystemMouseCursors.click,
                    child: Center(
                      child: Text(
                        "Email@gmc.cpm",
                        style: TextStyle(fontSize: 42, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Sticker(scrollOffset: _scrollOffset),
          ],
        ),
      ),
    );
  }
}
