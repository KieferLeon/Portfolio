import 'package:flutter/material.dart';
import 'ProjectInfo.dart';

class Projectprerviews {
  static StatelessWidget Unity({double? width = 300, double? height = 200}) =>
      Preview(
        width: width,
        height: height,
        imageRoute: "assets/project_images/unity/unity_charakter.png",
        projectRoute: "/UnityProject",
      );
  static StatelessWidget Uno({double? width = 300, double? height = 200}) =>
      Preview(
        width: width,
        height: height,
        imageRoute: "assets/project_images/uno/uno_menu.png",
        projectRoute: "/Uno",
      );
  static StatelessWidget Portfolio({
    double? width = 300,
    double? height = 200,
  }) => Preview(
    width: width,
    height: height,
    imageRoute: "assets/project_images/portfolio/portfolio_preview.png",
    projectRoute: "/Portfolio",
  );
}

class Preview extends StatelessWidget {
  final double? height;
  final double? width;
  final String projectRoute;
  final String imageRoute;

  Preview({
    this.height = 200,
    this.width = 300,
    required this.imageRoute,
    required this.projectRoute,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, projectRoute);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: width,
          height: height,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imageRoute),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
