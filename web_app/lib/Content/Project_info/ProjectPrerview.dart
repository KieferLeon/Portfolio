import 'package:flutter/material.dart';
import 'Project1.dart';

class Projectprerviews {
  static StatelessWidget project1({
    double? width = 300,
    double? height = 200,
  }) => _Project1(width: width, height: height);
}

class _Project1 extends StatelessWidget {
  final double? height;
  final double? width;

  _Project1({this.height = 200, this.width = 300});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/Project1");
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: width,
          height: height,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
