import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'tech_icon.dart';
//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class FlutterIcon extends TechIcon {
  FlutterIcon({super.selected = false});

  @override
  FlutterIcon clone() {
    return FlutterIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1922619, size.height * 0.5011905);
    path_0.lineTo(size.width * 0.5732143, size.height * 0.1190476);
    path_0.lineTo(size.width * 0.8077381, size.height * 0.1190476);
    path_0.lineTo(size.width * 0.3101190, size.height * 0.6166667);
    path_0.close();
    path_0.moveTo(size.width * 0.5732143, size.height * 0.8809524);
    path_0.lineTo(size.width * 0.8077381, size.height * 0.8809524);
    path_0.lineTo(size.width * 0.6047619, size.height * 0.6779762);
    path_0.lineTo(size.width * 0.8077381, size.height * 0.4708333);
    path_0.lineTo(size.width * 0.5732143, size.height * 0.4708333);
    path_0.lineTo(size.width * 0.3702381, size.height * 0.6755952);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6047619, size.height * 0.6779762);
    path_1.lineTo(size.width * 0.4857143, size.height * 0.5589286);
    path_1.lineTo(size.width * 0.3702381, size.height * 0.6755952);
    path_1.lineTo(size.width * 0.4857143, size.height * 0.7922619);
    path_1.close();

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8077381, size.height * 0.8809524);
    path_2.lineTo(size.width * 0.6047619, size.height * 0.6779762);
    path_2.lineTo(size.width * 0.4857143, size.height * 0.7922619);
    path_2.lineTo(size.width * 0.5732143, size.height * 0.8809524);
    path_2.close();

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4857143, size.height * 0.7922619);
    path_3.lineTo(size.width * 0.6690476, size.height * 0.7422619);
    path_3.lineTo(size.width * 0.6047619, size.height * 0.6779762);
    path_3.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = selected ? Color(0xff3fb6d3) : Color(0xff969696);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = selected ? Color(0xff27aacd) : Color(0xff878787);
    canvas.drawPath(path_1, paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = selected ? Color(0xff19599a) : Color(0xff4d4d4d);
    canvas.drawPath(path_2, paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = selected
        ? ui.Gradient.linear(
            Offset(size.width * 0.3533631, size.height * 0.6926190),
            Offset(size.width * 0.5168155, size.height * 0.5916607),
            [Color(0xff1b4e94), Color(0xff1a5497), Color(0xff195a9b)],
            [0, 0.63, 1],
          )
        : ui.Gradient.linear(
            Offset(size.width * 0.3533631, size.height * 0.6926190),
            Offset(size.width * 0.5168155, size.height * 0.5916607),
            [Color(0xff474747), Color(0xff4a4a4a), Color(0xff4e4e4e)],
            [0, 0.63, 1],
          );
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant FlutterIcon oldDelegate) {
    // Repaint only if 'selected' changed
    return oldDelegate.selected != selected;
  }
}
