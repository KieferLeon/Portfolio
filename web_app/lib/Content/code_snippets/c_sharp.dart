import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CSharpSnippet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
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
          TextSpan(text: 'SortHand'),
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
          TextSpan(text: '    .ToList();\n'),

          // Method end
          TextSpan(text: '}\n'),
        ],
      ),
    );
  }
}

class Snippet2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 12,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'public ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(
            text: 'void ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: 'CardHover'),
          TextSpan(text: '(object sender, MouseEventArgs e) {\n'),
          TextSpan(
            text: '  if ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: '(!IsInPlayerHand) '),
          TextSpan(
            text: 'return',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: ';\n'),

          TextSpan(text: '  Canvas card = (Canvas)sender;\n\n'),

          TextSpan(
            text: '  double ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: 'pos = -20;\n'),
          TextSpan(text: '  Canvas.SetTop(card, Canvas.GetTop(card));\n\n'),

          TextSpan(
            text: '  DoubleAnimation ',
            style: TextStyle(color: Colors.teal),
          ),
          TextSpan(text: 'hoveranimation = new DoubleAnimation {\n'),
          TextSpan(text: '    To = pos,\n'),
          TextSpan(text: '    Duration = TimeSpan.FromMilliseconds(300),\n'),
          TextSpan(
            text:
                '    EasingFunction = new QuadraticEase() { EasingMode = EasingMode.EaseInOut }\n',
          ),
          TextSpan(text: '  };\n\n'),

          TextSpan(text: '  Canvas.SetZIndex(card, 1000);\n'),
          TextSpan(
            text:
                '  card.BeginAnimation(Canvas.TopProperty, hoveranimation);\n',
          ),
          TextSpan(
            text: '}',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Snippet3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'private ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(
            text: 'void ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: 'NextTurn() {\n'),

          TextSpan(
            text: '    if ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: '(isForward) {\n'),

          TextSpan(
            text: '        if ',
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: '(CurPlayerIndex != players.Length - 1)\n'),
          TextSpan(text: '            CurPlayerIndex += 1;\n'),
          TextSpan(text: '        else\n'),
          TextSpan(text: '            CurPlayerIndex = 0;\n'),

          TextSpan(text: '    } else {\n'),

          TextSpan(
            text: '        if ',
            style: TextStyle(color: Colors.blue),
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
}
