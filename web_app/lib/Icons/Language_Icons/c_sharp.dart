import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'tech_icon.dart';
import 'dart:ui' as ui;

class CSharpIcon extends TechIcon {
  CSharpIcon({super.selected = false});

  @override
  CSharpIcon clone() {
    return CSharpIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1000000, size.height * 0.3350858);
    path_0.lineTo(size.width * 0.1000000, size.height * 0.6648402);
    path_0.cubicTo(
      size.width * 0.1000000,
      size.height * 0.7057139,
      size.width * 0.1217204,
      size.height * 0.7434283,
      size.width * 0.1571640,
      size.height * 0.7638652,
    );
    path_0.lineTo(size.width * 0.4428854, size.height * 0.9287424);
    path_0.cubicTo(
      size.width * 0.4782303,
      size.height * 0.9492780,
      size.width * 0.5217697,
      size.height * 0.9492780,
      size.width * 0.5571147,
      size.height * 0.9287424,
    );
    path_0.lineTo(size.width * 0.8427373, size.height * 0.7638652);
    path_0.arcToPoint(
      Offset(size.width * 0.9000000, size.height * 0.6649389),
      radius: Radius.elliptical(
        size.width * 0.1142293,
        size.height * 0.1142293,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path_0.lineTo(size.width * 0.9000000, size.height * 0.3350858);
    path_0.cubicTo(
      size.width * 0.9000000,
      size.height * 0.2942120,
      size.width * 0.8781809,
      size.height * 0.2564976,
      size.width * 0.8427373,
      size.height * 0.2360607,
    );
    path_0.lineTo(size.width * 0.5571147, size.height * 0.07118353);
    path_0.cubicTo(
      size.width * 0.5217697,
      size.height * 0.05074666,
      size.width * 0.4781316,
      size.height * 0.05074666,
      size.width * 0.4428854,
      size.height * 0.07118353,
    );
    path_0.lineTo(size.width * 0.1571640, size.height * 0.2360607);
    path_0.arcToPoint(
      Offset(size.width * 0.1000000, size.height * 0.3350858),
      radius: Radius.elliptical(
        size.width * 0.1142293,
        size.height * 0.1142293,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(0, 0),
      Offset(size.width, size.height),
      selected
          ? [Color(0xff927BE5), Color(0xff512BD4)]
          : [Color(0xFFBBBBBB), Color(0xFF444444)],
      [0.0, 1.0],
    );
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3000243, size.height * 0.4429440);
    path_1.lineTo(size.width * 0.3000243, size.height * 0.5571733);
    path_1.arcToPoint(
      Offset(size.width * 0.3487964, size.height * 0.5774128),
      radius: Radius.elliptical(
        size.width * 0.02843391,
        size.height * 0.02843391,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path_1.cubicTo(
      size.width * 0.3541278,
      size.height * 0.5719827,
      size.width * 0.3570896,
      size.height * 0.5647755,
      size.width * 0.3570896,
      size.height * 0.5571733,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.4058617, size.height * 0.5370327),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.cubicTo(
      size.width * 0.4112918,
      size.height * 0.5423640,
      size.width * 0.4142536,
      size.height * 0.5495712,
      size.width * 0.4142536,
      size.height * 0.5571733,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.2428603, size.height * 0.5571733),
      radius: Radius.elliptical(
        size.width * 0.08569666,
        size.height * 0.08569666,
      ),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.2428603, size.height * 0.4429440);
    path_1.arcToPoint(
      Offset(size.width * 0.4142536, size.height * 0.4429440),
      radius: Radius.elliptical(
        size.width * 0.08569666,
        size.height * 0.08569666,
      ),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.3654816, size.height * 0.4630847),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.3570896, size.height * 0.4429440),
      radius: Radius.elliptical(
        size.width * 0.02863137,
        size.height * 0.02863137,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.3084163, size.height * 0.4227046),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.3000243, size.height * 0.4429440),
      radius: Radius.elliptical(
        size.width * 0.02863137,
        size.height * 0.02863137,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: false,
    );
    path_1.close();
    path_1.moveTo(size.width * 0.7571390, size.height * 0.5571733);
    path_1.arcToPoint(
      Offset(size.width * 0.7285076, size.height * 0.5858047),
      radius: Radius.elliptical(
        size.width * 0.02843391,
        size.height * 0.02843391,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.6998762, size.height * 0.5858047);
    path_1.lineTo(size.width * 0.6998762, size.height * 0.6143374);
    path_1.arcToPoint(
      Offset(size.width * 0.6428110, size.height * 0.6143374),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.6428110, size.height * 0.5857060);
    path_1.lineTo(size.width * 0.5856469, size.height * 0.5857060);
    path_1.lineTo(size.width * 0.5856469, size.height * 0.6143374);
    path_1.arcToPoint(
      Offset(size.width * 0.5285817, size.height * 0.6143374),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.5285817, size.height * 0.5857060);
    path_1.lineTo(size.width * 0.4999503, size.height * 0.5857060);
    path_1.arcToPoint(
      Offset(size.width * 0.4798096, size.height * 0.5370327),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.4999503, size.height * 0.5286407),
      radius: Radius.elliptical(
        size.width * 0.02863137,
        size.height * 0.02863137,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.5285817, size.height * 0.5286407);
    path_1.lineTo(size.width * 0.5285817, size.height * 0.4714767);
    path_1.lineTo(size.width * 0.4999503, size.height * 0.4714767);
    path_1.arcToPoint(
      Offset(size.width * 0.4798096, size.height * 0.4227046),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.4999503, size.height * 0.4143127),
      radius: Radius.elliptical(
        size.width * 0.02863137,
        size.height * 0.02863137,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.5285817, size.height * 0.4143127);
    path_1.lineTo(size.width * 0.5285817, size.height * 0.3857800);
    path_1.arcToPoint(
      Offset(size.width * 0.5773537, size.height * 0.3655406),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.cubicTo(
      size.width * 0.5826851,
      size.height * 0.3709707,
      size.width * 0.5856469,
      size.height * 0.3781779,
      size.width * 0.5856469,
      size.height * 0.3857800,
    );
    path_1.lineTo(size.width * 0.5856469, size.height * 0.4144114);
    path_1.lineTo(size.width * 0.6428110, size.height * 0.4144114);
    path_1.lineTo(size.width * 0.6428110, size.height * 0.3857800);
    path_1.arcToPoint(
      Offset(size.width * 0.6915830, size.height * 0.3655406),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.cubicTo(
      size.width * 0.6969144,
      size.height * 0.3709707,
      size.width * 0.6999750,
      size.height * 0.3781779,
      size.width * 0.6999750,
      size.height * 0.3857800,
    );
    path_1.lineTo(size.width * 0.6999750, size.height * 0.4144114);
    path_1.lineTo(size.width * 0.7285076, size.height * 0.4144114);
    path_1.arcToPoint(
      Offset(size.width * 0.7285076, size.height * 0.4714767),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.6998762, size.height * 0.4714767);
    path_1.lineTo(size.width * 0.6998762, size.height * 0.5286407);
    path_1.lineTo(size.width * 0.7285076, size.height * 0.5286407);
    path_1.arcToPoint(
      Offset(size.width * 0.7571390, size.height * 0.5572721),
      radius: Radius.elliptical(
        size.width * 0.02853264,
        size.height * 0.02853264,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.close();
    path_1.moveTo(size.width * 0.6427122, size.height * 0.4715754);
    path_1.lineTo(size.width * 0.5855482, size.height * 0.4715754);
    path_1.lineTo(size.width * 0.5855482, size.height * 0.5287394);
    path_1.lineTo(size.width * 0.6427122, size.height * 0.5287394);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Color(0xffffffff);

    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CSharpIcon oldDelegate) {
    // Repaint only if 'selected' changed
    return oldDelegate.selected != selected;
  }
}
