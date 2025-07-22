import 'package:flutter/material.dart';
import '../../../main.dart';
import '../tech_content/tech_widget.dart';

class TechOverview extends StatelessWidget {
  final bool isLanguage;
  final List<TechWidget> techWidgets;

  const TechOverview({
    super.key,
    required this.isLanguage,
    required this.techWidgets,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    final fontSize = (screenwidth * 0.05).clamp(60.0, 80.0);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: screenwidth,
        height: isMobile(context) ? screenheight * 3 : screenheight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isLanguage ? "Sprachen" : "Frameworks",
                style: TextStyle(fontSize: fontSize),
              ),

              SizedBox(height: 40),

              isMobile(context)
                  ? Column(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: techWidgets,
                    )
                  : Row(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: techWidgets,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
