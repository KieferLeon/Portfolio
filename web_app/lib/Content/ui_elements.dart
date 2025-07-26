import 'package:flutter/material.dart';
import 'package:web_app/Content/texts/descriptions.dart';
import 'package:web_app/main.dart';
import 'dart:ui' as ui;
import 'colors.dart';

class ExpandableButton extends StatefulWidget {
  final Color buttonColor;
  final String buttonText;
  final RichText content;

  const ExpandableButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.content,
  });

  @override
  ExpandableButtonState createState() => ExpandableButtonState();
}

class ExpandableButtonState extends State<ExpandableButton> {
  bool textVisible = false;
  final GlobalKey _key = GlobalKey();
  double textHeight = 300;
  @override
  Widget build(BuildContext context) {
    //final screenwidth = MediaQuery.of(context).size.width;
    //final fontSize = (screenwidth * 0.05).clamp(20.0, 30.0);

    return SizedBox(
      width: isMobile(context) ? 380 : 800,
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
                  child: textVisible ? widget.content : SizedBox.shrink(),
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

class UiNavigation extends StatelessWidget {
  final Color color;
  const UiNavigation({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, size: 40, color: color),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        IconButton(
          icon: Icon(Icons.home_rounded, size: 40, color: color),
          onPressed: () {
            Navigator.of(context).popUntil(ModalRoute.withName('/'));
          },
        ),
      ],
    );
  }
}
