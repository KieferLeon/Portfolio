import 'package:flutter/material.dart';
import 'Project1.dart';

class Projectprerviews {
  static StatelessWidget Project1 = _Project1();
}

class _Project1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/Project1');
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
