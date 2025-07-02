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

  // Choose a size for your logo widget, say max 80% width and proportionate height
  final logoWidth = screenWidth * 0.8;
  final logoHeight = logoWidth * (153.57507 / 613.81519); // preserve aspect r


    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height, // fill screen height
          ),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // vertical center
              crossAxisAlignment: CrossAxisAlignment.center, // horizontal center
              children: <Widget>[
                Center(
                child: Container(
                  width: logoWidth,
                  height: logoHeight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: CustomPaint(
                    size: Size(logoWidth, logoHeight),
                    painter: Namelogo(),
                  ),
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

/*class Langueges extends StatelessWidget {
  const Langueges({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
            CustomPaint(
            size: Size(500, 300),  // Specify a size or use constraints
            painter: CSharpUICard(),
          ),
        ],
      ),
    );
  }
}*/
