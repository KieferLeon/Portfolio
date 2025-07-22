import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CSharpSnippets {
  List<String> filenames = ["Player.cs", "Card.cs", "Game.cs"];

  LayoutBuilder Function() sortHand = sortHandContent;
  LayoutBuilder Function() cardHover = cardHoverContent;
  LayoutBuilder Function() nextTurn = nextTurnContent;
}

LayoutBuilder sortHandContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      final fontSize = (constraints.maxWidth * 0.03).clamp(10.0, 24.0);

      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: fontSize,
            color: Color(0xFFD4D4D4),
          ),
          children: [
            TextSpan(
              text: 'public ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'void ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'SortHand',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '() {\n'),

            TextSpan(
              text: '  Color[] ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'colorValues = '),
            TextSpan(
              text: '{ ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text: 'Colors.Red',
              style: TextStyle(color: Color(0xFFFF5370)),
            ),
            TextSpan(
              text: ', Colors.Yellow',
              style: TextStyle(color: Color(0xFFFFCB6B)),
            ),
            TextSpan(
              text: ', Colors.Blue',
              style: TextStyle(color: Color(0xFF82AAFF)),
            ),
            TextSpan(
              text: ', Colors.Green',
              style: TextStyle(color: Color(0xFFC3E88D)),
            ),
            TextSpan(
              text: ', Colors.Black',
              style: TextStyle(color: Color(0xFFBBBBBB)),
            ),
            TextSpan(text: ' };\n\n'),

            TextSpan(
              text: '  string[] ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'numbers = '),
            TextSpan(
              text: '{ ',
              style: TextStyle(color: Color(0xFFD4D4D4)),
            ),
            TextSpan(
              text:
                  '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "🚫", "🔄", "+2"',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(text: ' };\n\n'),

            TextSpan(text: '  playercards = playercards\n'),
            TextSpan(
              text: '    .OrderBy',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(c => Array.IndexOf(colorValues, c.color))\n'),
            TextSpan(
              text: '    .ThenBy',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(c => Array.IndexOf(numbers, c.number))\n'),
            TextSpan(
              text: '    .ToList()',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),

            TextSpan(text: ';\n}\n'),
          ],
        ),
      );
    },
  );
}

LayoutBuilder cardHoverContent() {
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
              text: 'public ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'void ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'CardHover',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(object sender, MouseEventArgs e) {\n'),

            TextSpan(
              text: '  if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(!IsInPlayerHand) '),
            TextSpan(
              text: 'return',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: ';\n\n'),

            TextSpan(
              text: '  Canvas ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'card = (Canvas)sender;\n\n'),

            TextSpan(
              text: '  double ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'pos = -20;\n'),

            TextSpan(
              text: '  Canvas.SetTop',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(card, Canvas.GetTop(card));\n\n'),

            TextSpan(
              text: '  DoubleAnimation ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'hoveranimation = '),
            TextSpan(
              text: 'new ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: 'DoubleAnimation {\n'),
            TextSpan(text: '    To = pos,\n'),
            TextSpan(
              text: '    Duration = ',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: 'TimeSpan.FromMilliseconds(300),\n'),
            TextSpan(
              text: '    EasingFunction = ',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(
              text: 'new ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: 'QuadraticEase() '),
            TextSpan(text: '{ EasingMode = EasingMode.EaseInOut }\n'),
            TextSpan(text: '  };\n\n'),

            TextSpan(
              text: '  Canvas.SetZIndex',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(card, 1000);\n'),
            TextSpan(
              text: '  card.BeginAnimation',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(Canvas.TopProperty, hoveranimation);\n'),

            TextSpan(text: '}\n'),
          ],
        ),
      );
    },
  );
}

LayoutBuilder nextTurnContent() {
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
              text: 'private ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'void ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'NextTurn',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '() {\n'),

            TextSpan(
              text: '    if ',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(text: '(isForward) {\n'),

            TextSpan(
              text: '        if ',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(text: '(CurPlayerIndex != players.Length - 1)\n'),
            TextSpan(text: '            CurPlayerIndex += 1;\n'),
            TextSpan(text: '        else\n'),
            TextSpan(text: '            CurPlayerIndex = 0;\n'),

            TextSpan(text: '    } '),
            TextSpan(
              text: 'else ',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(text: '{\n'),

            TextSpan(
              text: '        if ',
              style: TextStyle(color: Color(0xFFC586C0)),
            ),
            TextSpan(text: '(CurPlayerIndex != 0)\n'),
            TextSpan(text: '            CurPlayerIndex -= 1;\n'),
            TextSpan(text: '        else\n'),
            TextSpan(
              text: '            CurPlayerIndex = players.Length - 1;\n',
            ),

            TextSpan(text: '    }\n'),
            TextSpan(text: '}\n'),
          ],
        ),
      );
    },
  );
}
