import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;
import 'dart:math';
import './../Icons/nameLogo.dart';
import './../Icons/arrow_down.dart';

class Frontpage extends StatefulWidget {
  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _move;
  double screenHeight = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    //_controller.forward();
  }
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Get screen height AFTER widget is laid out
    screenHeight = MediaQuery.of(context).size.height;

    _move = Tween<Offset>(
      begin: Offset(0,0),
      end: Offset(0,-screenHeight),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

   //_controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final logoWidth = screenWidth * 0.8;
    final logoHeight = logoWidth * (153.57507 / 613.81519);

    final double arrowWidth = 40;
    final double arrowHeight = arrowWidth * (24 / 40);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: _move.value,
      child: child,
    );
  },
  child: Scaffold(
    body: LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: logoWidth,
                    height: logoHeight,
                    child: AnimatedName(
                      width: logoWidth,
                      height: logoHeight,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _controller.forward(from: 0);
                    },
                    child: CustomPaint(
                      size: Size(arrowWidth, arrowHeight),
                      painter: ArrowDown(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
  ),
);
  }
}

class AnimatedName extends StatefulWidget {
  final double width;
  final double height;

  const AnimatedName({Key? key, required this.width, required this.height})
    : super(key: key);

  @override
  _NamelogoAnimationWidgetState createState() =>
      _NamelogoAnimationWidgetState();
}

class _NamelogoAnimationWidgetState extends State<AnimatedName>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> drawanimation;
  late Animation<Size> dotanimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    drawanimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Interval(0.0, 0.9)));

    dotanimation = Tween<Size>(begin: Size.zero, end: const Size(1, 1)).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.9, 1, curve: Curves.easeOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size(widget.width, widget.height),
          painter: Namelogo(drawanimation.value, dotanimation.value),
        );
      },
    );
  }
}
