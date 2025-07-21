import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class PortfolioSnippets {
  List<String> filenames = ["Welcomepage.dart", "main.dart", "Languages.dart"];

  RichText Function(double fontSize) animaiton = Animaiton;
  RichText Function(double fontSize) project = Project;
  RichText Function(double fontSize) language = Language;
}

RichText Animaiton(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // default text color
      ),
      children: [
        TextSpan(
          text: 'GestureDetector(\n',
          style: TextStyle(color: Color(0xFF569CD6)), // type blue
        ),
        TextSpan(
          text: '  onTap: () {\n',
          style: TextStyle(color: Color(0xFFC586C0)), // keyword purple
        ),
        TextSpan(
          text: '    if (focus) {\n',
          style: TextStyle(color: Color(0xFFC586C0)), // keyword purple
        ),
        TextSpan(
          text: '      _controllerUp.forward(from: ',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: '0',
          style: TextStyle(color: Color(0xFFB5CEA8)), // number green
        ),
        TextSpan(
          text: ');\n',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: '      widget.focusout();\n',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: '      focus = ',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: 'false',
          style: TextStyle(color: Color(0xFF569CD6)), // boolean blue
        ),
        TextSpan(
          text: ';\n',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: '    } else {\n',
          style: TextStyle(color: Color(0xFFC586C0)), // keyword purple
        ),
        TextSpan(
          text: '      _controllerUp.reverse(from: ',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: '1',
          style: TextStyle(color: Color(0xFFB5CEA8)), // number green
        ),
        TextSpan(
          text: ');\n',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: '      widget.focusin();\n',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: '      focus = ',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: 'true',
          style: TextStyle(color: Color(0xFF569CD6)), // boolean blue
        ),
        TextSpan(
          text: ';\n',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: '    }\n',
          style: TextStyle(color: Color(0xFFC586C0)), // keyword purple
        ),
        TextSpan(
          text: '  },\n',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: '  child: CustomPaint(\n',
          style: TextStyle(color: Color(0xFF569CD6)), // type blue
        ),
        TextSpan(
          text: '    size: Size(arrowWidth, arrowHeight),\n',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
        ),
        TextSpan(
          text: '    painter: ArrowDown(point1, point2, point3),\n',
          style: TextStyle(color: Color(0xFFD4D4D4)), // default
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
}

RichText Project(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // default light gray
      ),
      children: [
        TextSpan(
          text: 'ProjectInfo',
          style: TextStyle(color: Color(0xFF569CD6)), // blue
        ),
        TextSpan(text: '(\n  '),

        TextSpan(
          text: 'name',
          style: TextStyle(color: Color(0xFF9CDCFE)), // light blue
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: '"Portfolio"',
          style: TextStyle(color: Color(0xFFCE9178)), // orange string
        ),
        TextSpan(text: ',\n  '),

        TextSpan(
          text: 'framework',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: 'Tech',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(text: '(\n    '),

        TextSpan(
          text: 'icon',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: 'FlutterIcon',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(text: '(selected: false),\n    '),

        TextSpan(
          text: 'route',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: '"/Flutter"',
          style: TextStyle(color: Color(0xFFCE9178)),
        ),
        TextSpan(text: ',\n  ),\n  '),

        TextSpan(
          text: 'language',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: 'Tech',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(
          text: '(icon: DartIcon(selected: false), route: "/Dart"),\n  ',
        ),

        TextSpan(
          text: 'videoPath',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: '"assets/project_images/unity/unity_gameplay.mp4"',
          style: TextStyle(color: Color(0xFFCE9178)),
        ),
        TextSpan(text: ',\n  '),

        TextSpan(
          text: 'filenames',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': '),
        TextSpan(
          text: 'CodeSnippetLibary.unity.filenames',
          style: TextStyle(color: Color(0xFFDCDCAA)), // yellow-ish
        ),
        TextSpan(text: ',\n  '),

        TextSpan(
          text: 'codeSnippetsContent',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': [\n    '),

        TextSpan(
          text: 'CodeSnippetLibary.portfolio.animaiton',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),
        TextSpan(text: '(screenHeight * 0.04),\n    '),

        TextSpan(
          text: 'CodeSnippetLibary.unity.getDamage',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),
        TextSpan(text: '(screenHeight * 0.04),\n    '),

        TextSpan(
          text: 'CodeSnippetLibary.unity.roomSpawning',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),
        TextSpan(text: '(screenHeight * 0.034),\n  ],\n  '),

        TextSpan(
          text: 'github',
          style: TextStyle(color: Color(0xFF9CDCFE)),
        ),
        TextSpan(text: ': false,\n'),
        TextSpan(text: '),'),
      ],
    ),
  );
}

RichText Language(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // default light gray
      ),
      children: [
        TextSpan(
          text: 'class ',
          style: TextStyle(color: Color(0xFF569CD6)),
        ), // blue
        TextSpan(text: '_Lang '),
        TextSpan(
          text: 'extends ',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(text: 'State<Tech> {\n'),

        TextSpan(
          text: '  bool ',
          style: TextStyle(color: Color(0xFF4EC9B0)),
        ), // teal
        TextSpan(text: 'isHoverd = false;\n\n'),

        TextSpan(text: '  @override\n'),
        TextSpan(
          text: '  Widget ',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(text: 'build(BuildContext context) {\n'),

        TextSpan(text: '    return GestureDetector(\n'),
        TextSpan(
          text:
              '      onTap: () => Navigator.pushNamed(context, widget.route),\n',
        ),
        TextSpan(text: '      child: MouseRegion(\n'),
        TextSpan(text: '        onEnter: (_) => setState(() {\n'),
        TextSpan(text: '          isHoverd = true;\n'),
        TextSpan(text: '          widget.icon.selected = true;\n'),
        TextSpan(text: '        }),\n'),
      ],
    ),
  );
}
