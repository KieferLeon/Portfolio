import 'package:flutter/material.dart';
import '../tech_content/tech_widget.dart';

class TechOverview extends StatelessWidget {
  final bool isLanguage;
  final List<TechWidget> techWidgets;

  TechOverview({
    super.key,
    required this.isLanguage,
    required this.techWidgets,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: screenwidth,
        height: screenheight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isLanguage ? "Sprachen" : "Frameworks",
                style: TextStyle(fontSize: 80),
              ),

              SizedBox(height: 40),

              Row(
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
