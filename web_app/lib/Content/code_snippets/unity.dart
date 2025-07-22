import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class UnitySnippets {
  List<String> filenames = ["Player.cs", "Slime.cs", "Map_Spawner.cs"];

  LayoutBuilder Function() attack = attackContent;
  LayoutBuilder Function() getDamage = getDamageContent;
  LayoutBuilder Function() roomSpawning = roomSpawningContent;
}

LayoutBuilder attackContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      double fontSize = constraints.maxWidth * 0.035; // Adjust as needed
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
              text: 'Attack',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '() {\n'),
            TextSpan(text: '  '),
            TextSpan(
              text: 'animator',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: '.SetTrigger('),
            TextSpan(
              text: '"Attack"',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(text: ');\n\n'),
            TextSpan(text: '  '),
            TextSpan(
              text: 'if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '('),
            TextSpan(
              text: 'SpriteDirection',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: ' == '),
            TextSpan(
              text: 'Vector2.up',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: ')\n'),
            TextSpan(text: '    '),
            TextSpan(
              text: 'SwordHitbox',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: '.transform.localPosition = '),
            TextSpan(
              text: 'new ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'Vector2',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: '(0, 0);\n\n'),
            TextSpan(text: '  '),
            TextSpan(
              text: 'else if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '('),
            TextSpan(
              text: 'SpriteDirection',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: ' == '),
            TextSpan(
              text: 'Vector2.down',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: ')\n'),
            TextSpan(text: '    '),
            TextSpan(
              text: 'SwordHitbox',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: '.transform.localPosition = '),
            TextSpan(
              text: 'new ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'Vector2',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: '(0, -0.2f);\n\n'),
            TextSpan(text: '  '),
            TextSpan(
              text: 'else ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '\n    '),
            TextSpan(
              text: 'SwordHitbox',
              style: TextStyle(color: Color(0xFF9CDCFE)),
            ),
            TextSpan(text: '.transform.localPosition = '),
            TextSpan(
              text: 'new ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(
              text: 'Vector2',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: '(0.15f, -0.1f);\n'),
            TextSpan(text: '}\n'),
          ],
        ),
      );
    },
  );
}

LayoutBuilder getDamageContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      double fontSize = constraints.maxWidth * 0.035;
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
              text: 'GetDamage',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '('),
            TextSpan(
              text: 'float ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'AttackDamage, '),
            TextSpan(
              text: 'float ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'knockback, '),
            TextSpan(
              text: 'Vector2 ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'knockbackDirection) {\n'),
            TextSpan(text: '  '),
            TextSpan(
              text: 'if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(canBeHit) {\n'),
            TextSpan(text: '    health -= AttackDamage;\n'),
            TextSpan(text: '    animator.SetTrigger('),
            TextSpan(
              text: '"Damaged"',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(text: ');\n'),
            TextSpan(text: '    Vector2 force = knockbackDirection;\n'),
            TextSpan(text: '    rb.AddForce(force * knockback * 100, '),
            TextSpan(
              text: 'ForceMode2D.Impulse',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: ');\n\n'),
            TextSpan(text: '    '),
            TextSpan(
              text: 'if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(health <= 0) {\n'),
            TextSpan(text: '      animator.SetTrigger('),
            TextSpan(
              text: '"Death"',
              style: TextStyle(color: Color(0xFFCE9178)),
            ),
            TextSpan(text: ');\n    }\n'),
            TextSpan(text: '  }\n'),
            TextSpan(text: '}\n'),
          ],
        ),
      );
    },
  );
}

LayoutBuilder roomSpawningContent() {
  return LayoutBuilder(
    builder: (context, constraints) {
      double fontSize = constraints.maxWidth * 0.035;
      return RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: fontSize,
            color: Color(0xFFD4D4D4),
          ),
          children: [
            TextSpan(
              text: 'int[][,] ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'layouts = { layout1, layout2 };\n'),
            TextSpan(
              text: 'int[,] ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(
              text: 'gamelayout = layouts[rnd.Next(0, layouts.Length)];\n\n',
            ),
            TextSpan(
              text: 'for ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(int i = 0; i < gamelayout.GetLength(0); i++) {\n'),
            TextSpan(
              text: '  for ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(int j = 0; j < gamelayout.GetLength(1); j++) {\n'),
            TextSpan(text: '    int typeIndex = gamelayout[i, j] - 1;\n\n'),
            TextSpan(
              text: '    if ',
              style: TextStyle(color: Color(0xFF569CD6)),
            ),
            TextSpan(text: '(typeIndex >= 0 && typeIndex < Empty.Length) {\n'),
            TextSpan(
              text: '      int ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'roomSetIndex = rnd.Next(0, Rooms.Length);\n'),
            TextSpan(
              text: '      GameObject ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'roomPrefab = Rooms[roomSetIndex][typeIndex];\n\n'),
            TextSpan(
              text: '      float ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'x = j * CellWidth;\n'),
            TextSpan(
              text: '      float ',
              style: TextStyle(color: Color(0xFF4EC9B0)),
            ),
            TextSpan(text: 'y = 60 - i * CellHeight;\n\n'),
            TextSpan(
              text: '      SpawnRoom',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '(roomPrefab, x, y);\n'),
            TextSpan(text: '    } else {\n'),
            TextSpan(
              text: '      Debug.LogWarning',
              style: TextStyle(color: Color(0xFFDCDCAA)),
            ),
            TextSpan(text: '("Invalid room index" + typeIndex);\n'),
            TextSpan(text: '    }\n'),
            TextSpan(text: '  }\n'),
            TextSpan(text: '}\n'),
          ],
        ),
      );
    },
  );
}
