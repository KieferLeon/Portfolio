import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenWidth * 0.9,
          height: screenHeight * 3,
          child: Center(
            child: SizedBox(
              width: screenWidth * 0.9,
              height: screenHeight * 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: screenWidth * 0.1,
                      children: [
                        Container(
                          width: screenWidth * 0.5,
                          height: screenWidth * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.asset(
                                'assets/images.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          height: screenWidth * 0.3,
                          color: const Color.fromARGB(255, 9, 8, 6),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Container(width: 300, color: Colors.green)],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Container(width: 300, color: Colors.blue)],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
