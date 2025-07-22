import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inner_shadow;
import 'Colors.dart';
import 'package:flutter/services.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  ContactState createState() => ContactState();
}

class ContactState extends State<Contact> {
  var emailHoverd = false;
  OverlayEntry? _overlayEntry;

  final GlobalKey _emailKey = GlobalKey(); // Key for email container

  void _showCopiedOverlay() {
    _overlayEntry?.remove();

    final renderBox =
        _emailKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: position.dx + size.width / 2 - 40, // center-ish
        top: position.dy - 30, // above container
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Kopiert!",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);

    Future.delayed(Duration(milliseconds: 2000), () {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
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
              key: _emailKey, // Assign key here
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
                  : inner_shadow.BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        inner_shadow.BoxShadow(
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
                decoration: inner_shadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    inner_shadow.BoxShadow(
                      color: ui.Color.fromARGB(140, 255, 255, 255),
                      blurRadius: 3,
                      spreadRadius: 1,
                      offset: emailHoverd ? Offset(1, 1) : Offset(-4, -4),
                      inset: true,
                    ),
                  ],
                ),
                child: GestureDetector(
                  onTap: () async {
                    await Clipboard.setData(
                      ClipboardData(text: "Email@gmc.cpm"),
                    );
                    _showCopiedOverlay();
                  },
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
          ],
        ),
      ),
    );
  }
}
