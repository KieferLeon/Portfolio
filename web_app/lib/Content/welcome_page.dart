import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/main.dart';

import 'Colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final fontSize = (screenWidth * 0.05).clamp(40.0, 80.0);

    final currentDate = DateTime.now();
    final endDate = DateTime(2025, 10, 1);
    final startDate = DateTime(2025, 6, 1);

    final dayCountdown = endDate.difference(DateTime.now()).inDays;

    final totalDuration = endDate.difference(startDate).inDays;
    final elapsed = currentDate.difference(startDate).inDays;

    final progress = elapsed / totalDuration;

    return Scaffold(
      body: SizedBox(
        width: screenWidth * 1.4,
        height: screenHeight * 1.4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Hi Mein Name ist Leon",
                style: TextStyle(fontSize: fontSize, color: ThemeColors.black),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 40),

              Column(
                children: [
                  Text(
                    "1 Semester Angewandte Informatik",
                    style: TextStyle(fontSize: 20, color: ThemeColors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              SizedBox(height: 20),

              GitHubButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class GitHubButton extends StatelessWidget {
  void _openNewTab() {
    html.window.open("https://github.com/KieferLeon", "_blank");
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final fontSize = (screenWidth * 0.05).clamp(20.0, 40.0);

    return Container(
      width: isMobile(context) ? 300 : 450,
      height: 80,
      decoration: BoxDecoration(
        color: ThemeColors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {
          _openNewTab();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Check mein Github",
              style: TextStyle(fontSize: fontSize, color: ThemeColors.white),
            ),

            SvgPicture.asset("assets/git_hub_logo.svg", width: 60, height: 60),
          ],
        ),
      ),
    );
  }
}

class GradientProgressBar extends StatelessWidget {
  final double value;
  final double height;

  const GradientProgressBar({super.key, required this.value, this.height = 12});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: height,
            color: const Color.fromARGB(255, 214, 214, 214),
          ),

          FractionallySizedBox(
            widthFactor: value, // progress
            child: Container(
              height: height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [ThemeColors.primary1, ThemeColors.primary2],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
