import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PortfolioSnippets {
  List<String> filenames = ["WelcomePage.dart", "Main.dart", "Languages.dart"];

  LayoutBuilder Function() animation = animationContent;
  LayoutBuilder Function() project = projectContent;
  LayoutBuilder Function() language = languageContent;
}

LayoutBuilder animationContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      final fontSize = (constraints.maxWidth * 0.05).clamp(10.0, 24.0);

      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: fontSize,
            color: Color(0xFFD4D4D4),
          ),
          children: [
            TextSpan(
              text: 'GestureDetector(\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '  onTap: () {\n',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(
              text: '    if (focus) {\n',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(
              text: '      _controllerUp.forward(from: ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '0',
              style: TextStyle(color: Color(0xFFB5CEA8)),
            ),
            TextSpan(
              text: ');\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '      widget.focusout();\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '      focus = ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: 'false',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: ';\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '    } else {\n',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(
              text: '      _controllerUp.reverse(from: ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '1',
              style: TextStyle(color: Color(0xFFB5CEA8)),
            ),
            TextSpan(
              text: ');\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '      widget.focusin();\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '      focus = ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: 'true',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: ';\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '    }\n',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(
              text: '  },\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '  child: CustomPaint(\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '    size: Size(arrowWidth, arrowHeight),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '    painter: ArrowDown(point1, point2, point3),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '  ),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
          ],
        ),
      );
    },
  );
}

LayoutBuilder projectContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      final fontSize = (constraints.maxWidth * 0.05).clamp(10.0, 24.0);

      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: fontSize,
            color: Color(0xFFD4D4D4),
          ),
          children: [
            TextSpan(
              text: 'ProjectInfo(\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '  name: ',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(
              text: '"Portfolio",\n',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(
              text: '  framework: Tech(\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '    icon: FlutterIcon(selected: false),\n',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(
              text: '    route: "/Flutter",\n',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(
              text: '  ),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '  language: Tech(\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '    icon: DartIcon(selected: false),\n',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(
              text: '    route: "/Dart",\n',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(
              text: '  ),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text:
                  '  videoPath: "assets/project_images/unity/unity_gameplay.mp4",\n',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(
              text: '  filenames: CodeSnippetLibrary.unity.filenames,\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text: '  codeSnippetsContent: [\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text:
                  '    CodeSnippetLibrary.portfolio.animation(screenHeight * 0.04),\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text:
                  '    CodeSnippetLibrary.unity.getDamage(screenHeight * 0.04),\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text:
                  '    CodeSnippetLibrary.unity.roomSpawning(screenHeight * 0.034),\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text: '  ],\n',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text: '  github: false,\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
          ],
        ),
      );
    },
  );
}

LayoutBuilder languageContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      final fontSize = (constraints.maxWidth * 0.05).clamp(10.0, 24.0);

      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: fontSize,
            color: Color(0xFFD4D4D4),
          ),
          children: [
            TextSpan(
              text: 'class _Lang extends State<Tech> {\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '  bool isHovered = false;\n\n',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(
              text: '  @override\n',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: '  Widget build(BuildContext context) {\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '    return GestureDetector(\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text:
                  '      onTap: () => Navigator.pushNamed(context, widget.route),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '      child: MouseRegion(\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '        onEnter: (_) => setState(() {\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '          isHovered = true;\n',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(
              text: '          widget.icon.selected = true;\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: '        }),\n',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            // Continue adding spans as needed...
          ],
        ),
      );
    },
  );
}
