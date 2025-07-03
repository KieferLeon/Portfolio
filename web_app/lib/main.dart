import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'language_cards/CSharpCard.dart';
import 'nameLogo.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {

  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  final logoWidth = screenWidth * 0.8;
  final logoHeight = logoWidth * (153.57507 / 613.81519); //Aspect Ratio 

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height, 
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                Center(
                child: Container(
                  width: logoWidth,
                  height: logoHeight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: AnimatedName(width: logoWidth, height: logoHeight),
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

class AnimatedName extends StatefulWidget {
  final double width;
  final double height;

  const AnimatedName({Key? key, required this.width, required this.height}) : super(key: key);

  @override
  _NamelogoAnimationWidgetState createState() => _NamelogoAnimationWidgetState();
}

class _NamelogoAnimationWidgetState extends State<AnimatedName> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> moveAnimation;
  late Animation<double> drawanimation;
  late Animation<Size> sizeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );

      drawanimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 0.8),
        ));

    moveAnimation = TweenSequence<Offset>([
    TweenSequenceItem(
      tween: Tween(
        begin: Offset(0, -36), 
        end: Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeInCubic)),
      weight: 10,
    ),
    TweenSequenceItem(
      tween: Tween(begin: Offset(0, 0), end: Offset(0, -10))
          .chain(CurveTween(curve: Curves.easeOutCubic)),
      weight: 10,
    ),
      TweenSequenceItem(
      tween: Tween(begin: Offset(0, -10), end: Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeInCubic)),
      weight: 10,
    ),
        TweenSequenceItem(
      tween: Tween(begin: Offset(0, 0), end: Offset(0, -4))
          .chain(CurveTween(curve: Curves.easeOutCubic)),
      weight: 10,
    ),
      TweenSequenceItem(
      tween: Tween(begin: Offset(0, -4), end: Offset(0, 0))
          .chain(CurveTween(curve: Curves.easeInCubic)),
      weight: 10,
    ),
  ]).animate(CurvedAnimation(
    parent: _controller, 
    curve: Interval(0.8, 1)));


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
          painter: Namelogo(drawanimation.value, moveAnimation.value),
        );
      },
    );
  }
}