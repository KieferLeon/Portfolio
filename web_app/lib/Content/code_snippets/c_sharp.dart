import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CSharpSnippets {
  RichText Function(double fontSize) sortHand = SortHand;
  RichText Function(double fontSize) cardHover = CardHover;
  RichText Function(double fontSize) nextTurn = NextTurn;
}

RichText SortHand(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // Default light gray (like VS Code)
      ),
      children: [
        // Method declaration
        TextSpan(
          text: 'public ',
          style: TextStyle(color: Color(0xFF569CD6)),
        ), // blue
        TextSpan(
          text: 'void ',
          style: TextStyle(color: Color(0xFF569CD6)),
        ), // blue
        TextSpan(
          text: 'SortHand',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),
        TextSpan(text: '() {\n'),

        // Color array
        TextSpan(
          text: '  Color[] ',
          style: TextStyle(color: Color(0xFF4EC9B0)),
        ), // teal
        TextSpan(text: 'colorValues = '),
        TextSpan(
          text: '{ ',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text: 'Colors.Red',
          style: TextStyle(color: Color(0xFFFF5370)),
        ), // red
        TextSpan(
          text: ', Colors.Yellow',
          style: TextStyle(color: Color(0xFFFFCB6B)),
        ), // yellow
        TextSpan(
          text: ', Colors.Blue',
          style: TextStyle(color: Color(0xFF82AAFF)),
        ), // blue
        TextSpan(
          text: ', Colors.Green',
          style: TextStyle(color: Color(0xFFC3E88D)),
        ), // green
        TextSpan(
          text: ', Colors.Black',
          style: TextStyle(color: Color(0xFFBBBBBB)),
        ), // gray
        TextSpan(text: ' };\n\n'),

        // Number array
        TextSpan(
          text: '  string[] ',
          style: TextStyle(color: Color(0xFF4EC9B0)),
        ), // teal
        TextSpan(text: 'numbers = '),
        TextSpan(
          text: '{ ',
          style: TextStyle(color: Color(0xFFD4D4D4)),
        ),
        TextSpan(
          text:
              '"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "🚫", "🔄", "+2"',
          style: TextStyle(color: Color(0xFFCE9178)), // string color (orange)
        ),
        TextSpan(text: ' };\n\n'),

        // LINQ chain
        TextSpan(text: '  playercards = playercards\n'),
        TextSpan(
          text: '    .OrderBy',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ), // yellow
        TextSpan(text: '(c => Array.IndexOf(colorValues, c.color))\n'),
        TextSpan(
          text: '    .ThenBy',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ), // yellow
        TextSpan(text: '(c => Array.IndexOf(numbers, c.number))\n'),
        TextSpan(
          text: '    .ToList()',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),

        // Method end
        TextSpan(text: ';\n}\n'),
      ],
    ),
  );
}

RichText CardHover(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // Default text color
      ),
      children: [
        // Method signature
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
          style: TextStyle(color: Color(0xFFDCDCAA)), // Method name
        ),
        TextSpan(text: '(object sender, MouseEventArgs e) {\n'),

        // if statement
        TextSpan(
          text: '  if ',
          style: TextStyle(color: Color(0xFF569CD6)), // blue
        ),
        TextSpan(text: '(!IsInPlayerHand) '),
        TextSpan(
          text: 'return',
          style: TextStyle(color: Color(0xFF569CD6)),
        ),
        TextSpan(text: ';\n\n'),

        // Variable declaration
        TextSpan(
          text: '  Canvas ',
          style: TextStyle(color: Color(0xFF4EC9B0)), // teal
        ),
        TextSpan(text: 'card = (Canvas)sender;\n\n'),

        TextSpan(
          text: '  double ',
          style: TextStyle(color: Color(0xFF4EC9B0)), // teal
        ),
        TextSpan(text: 'pos = -20;\n'),

        TextSpan(
          text: '  Canvas.SetTop',
          style: TextStyle(color: Color(0xFFDCDCAA)), // yellow
        ),
        TextSpan(text: '(card, Canvas.GetTop(card));\n\n'),

        // Animation declaration
        TextSpan(
          text: '  DoubleAnimation ',
          style: TextStyle(color: Color(0xFF4EC9B0)), // teal
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
          style: TextStyle(color: Color(0xFFDCDCAA)), // yellow
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

        // Method calls
        TextSpan(
          text: '  Canvas.SetZIndex',
          style: TextStyle(color: Color(0xFFDCDCAA)), // yellow
        ),
        TextSpan(text: '(card, 1000);\n'),
        TextSpan(
          text: '  card.BeginAnimation',
          style: TextStyle(color: Color(0xFFDCDCAA)),
        ),
        TextSpan(text: '(Canvas.TopProperty, hoveranimation);\n'),

        // End method
        TextSpan(text: '}\n'),
      ],
    ),
  );
}

RichText NextTurn(double fontSize) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        color: Color(0xFFD4D4D4), // Default light gray
      ),
      children: [
        TextSpan(
          text: 'private ',
          style: TextStyle(color: Color(0xFF569CD6)), // blue
        ),
        TextSpan(
          text: 'void ',
          style: TextStyle(color: Color(0xFF569CD6)), // blue
        ),
        TextSpan(
          text: 'NextTurn',
          style: TextStyle(color: Color(0xFFDCDCAA)), // yellow
        ),
        TextSpan(text: '() {\n'),

        TextSpan(
          text: '    if ',
          style: TextStyle(color: Color(0xFFC586C0)), // purple
        ),
        TextSpan(text: '(isForward) {\n'),

        TextSpan(
          text: '        if ',
          style: TextStyle(color: Color(0xFFC586C0)), // purple
        ),
        TextSpan(text: '(CurPlayerIndex != players.Length - 1)\n'),
        TextSpan(text: '            CurPlayerIndex += 1;\n'),
        TextSpan(text: '        else\n'),
        TextSpan(text: '            CurPlayerIndex = 0;\n'),

        TextSpan(text: '    } '),
        TextSpan(
          text: 'else ',
          style: TextStyle(color: Color(0xFFC586C0)), // purple
        ),
        TextSpan(text: '{\n'),

        TextSpan(
          text: '        if ',
          style: TextStyle(color: Color(0xFFC586C0)), // purple
        ),
        TextSpan(text: '(CurPlayerIndex != 0)\n'),
        TextSpan(text: '            CurPlayerIndex -= 1;\n'),
        TextSpan(text: '        else\n'),
        TextSpan(text: '            CurPlayerIndex = players.Length - 1;\n'),

        TextSpan(text: '    }\n'),
        TextSpan(text: '}\n'),
      ],
    ),
  );
}
