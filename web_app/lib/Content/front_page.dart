import 'package:flutter/material.dart';
import '../Icons/name_logo.dart';
import './../Icons/arrow_down.dart';

class Frontpage extends StatefulWidget {
  final VoidCallback focusout;
  final VoidCallback focusin;

  const Frontpage({super.key, required this.focusout, required this.focusin});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> with TickerProviderStateMixin {
  late AnimationController _controllerUp;
  late Animation<Offset> _moveUP;
  late AnimationController _arrowChangeDirection;
  late Offset point1 = Offset(0, 0);
  late Offset point2 = Offset(50, 60);
  late Offset point3 = Offset(100, 0);
  late Animation<Offset> point1Anim;
  late Animation<Offset> point2Anim;
  late Animation<Offset> point3Anim;

  double screenHeight = 0;
  bool focus = true;

  @override
  void initState() {
    super.initState();
    _controllerUp = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );
    _arrowChangeDirection = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    screenHeight = MediaQuery.of(context).size.height;

    _moveUP =
        Tween<Offset>(
          begin: Offset(0, 0),
          end: Offset(0, -screenHeight * 0.9),
        ).animate(
          CurvedAnimation(parent: _controllerUp, curve: Curves.easeOutCubic),
        );
    point1Anim = Tween<Offset>(begin: Offset(0, 0), end: Offset(100, 100))
        .animate(
          CurvedAnimation(
            parent: _arrowChangeDirection,
            curve: Curves.easeOutCubic,
          ),
        );

    point2Anim = Tween<Offset>(begin: Offset(50, 60), end: Offset(50, 40))
        .animate(
          CurvedAnimation(
            parent: _arrowChangeDirection,
            curve: Curves.easeOutCubic,
          ),
        );

    point3Anim = Tween<Offset>(begin: Offset(100, 0), end: Offset(0, 100))
        .animate(
          CurvedAnimation(
            parent: _arrowChangeDirection,
            curve: Curves.easeOutCubic,
          ),
        );

    _arrowChangeDirection.addListener(() {
      setState(() {
        point1 = point1Anim.value;
        point2 = point2Anim.value;
        point3 = point3Anim.value;
      });
    });
  }

  @override
  void dispose() {
    _controllerUp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final logoWidth = screenWidth * 0.9;
    final logoHeight = logoWidth * (153.57507 / 613.81519);

    final double arrowWidth = screenWidth * 0.04;
    final double arrowHeight = arrowWidth * (24 / 40);

    return AnimatedBuilder(
      animation: _controllerUp,
      builder: (context, child) {
        return Transform.translate(offset: _moveUP.value, child: child);
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
                    child: SizedBox(
                      width: arrowWidth,
                      height: arrowHeight,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            if (focus) {
                              _controllerUp.forward(from: 0);
                              widget.focusout();
                              _arrowChangeDirection.forward();
                              focus = false;
                            } else {
                              _controllerUp.reverse(from: 1);
                              widget.focusin();
                              _arrowChangeDirection.reverse();
                              focus = true;
                            }
                          },
                          child: CustomPaint(
                            size: Size(arrowWidth, arrowHeight),
                            painter: ArrowDown(point1, point2, point3),
                          ),
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

//Name Animaiton
class AnimatedName extends StatefulWidget {
  final double width;
  final double height;

  const AnimatedName({super.key, required this.width, required this.height});

  @override
  NamelogoAnimationWidgetState createState() => NamelogoAnimationWidgetState();
}

class NamelogoAnimationWidgetState extends State<AnimatedName>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> drawanimation;
  late Animation<double> dotanimation;

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

    dotanimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(
          begin: 0.0,
          end: 1.2,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween(
          begin: 1.2,
          end: 1.0,
        ).chain(CurveTween(curve: Curves.easeIn)),
        weight: 40,
      ),
    ]).animate(CurvedAnimation(parent: _controller, curve: Interval(0.9, 1)));

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
