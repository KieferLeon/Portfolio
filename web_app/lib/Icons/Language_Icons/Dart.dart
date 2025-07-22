import 'package:flutter/material.dart';
import 'tech_icon.dart';

class DartIcon extends TechIcon {
  DartIcon({super.selected = false});

  @override
  DartIcon clone() {
    return DartIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2083333, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.2708333, size.height * 0.7708333);
    path_0.lineTo(size.width * 0.1037708, size.height * 0.6037708);
    path_0.cubicTo(
      size.width * 0.07900000,
      size.height * 0.5790000,
      size.width * 0.07235417,
      size.height * 0.5413542,
      size.width * 0.08718750,
      size.height * 0.5096042,
    );
    path_0.lineTo(size.width * 0.2083333, size.height * 0.2500000);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5691458, size.height * 0.1316458);
    path_1.cubicTo(
      size.width * 0.5515417,
      size.height * 0.1140417,
      size.width * 0.5276875,
      size.height * 0.1041667,
      size.width * 0.5028125,
      size.height * 0.1041667,
    );
    path_1.cubicTo(
      size.width * 0.4872917,
      size.height * 0.1041667,
      size.width * 0.4720000,
      size.height * 0.1080208,
      size.width * 0.4583333,
      size.height * 0.1153750,
    );
    path_1.lineTo(size.width * 0.2083333, size.height * 0.2500000);
    path_1.lineTo(size.width * 0.2083333, size.height * 0.6738125);
    path_1.cubicTo(
      size.width * 0.2083333,
      size.height * 0.6959167,
      size.width * 0.2171042,
      size.height * 0.7171042,
      size.width * 0.2327500,
      size.height * 0.7327292,
    );
    path_1.lineTo(size.width * 0.2708333, size.height * 0.7708333);
    path_1.lineTo(size.width * 0.7291667, size.height * 0.7708333);
    path_1.lineTo(size.width * 0.7291667, size.height * 0.6666667);
    path_1.lineTo(size.width * 0.8750000, size.height * 0.4375000);
    path_1.lineTo(size.width * 0.5691458, size.height * 0.1316458);
    path_1.close();

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2083333, size.height * 0.2500000);
    path_2.lineTo(size.width * 0.6529792, size.height * 0.2500000);
    path_2.cubicTo(
      size.width * 0.6750833,
      size.height * 0.2500000,
      size.width * 0.6962708,
      size.height * 0.2587708,
      size.width * 0.7118958,
      size.height * 0.2744167,
    );
    path_2.lineTo(size.width * 0.8750000, size.height * 0.4375000);
    path_2.lineTo(size.width * 0.8750000, size.height * 0.7708333);
    path_2.lineTo(size.width * 0.7291667, size.height * 0.7708333);
    path_2.lineTo(size.width * 0.2083333, size.height * 0.2500000);
    path_2.close();

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.7291667, size.height * 0.7708333);
    path_3.lineTo(size.width * 0.2708333, size.height * 0.7708333);
    path_3.lineTo(size.width * 0.3958333, size.height * 0.8958333);
    path_3.lineTo(size.width * 0.7291667, size.height * 0.8958333);
    path_3.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = selected ? Color(0xff1565c0) : Color(0xff5b5b5b);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = selected ? Color(0xff42a5f5) : Color(0xff969696);
    canvas.drawPath(path_1, paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = selected ? Color(0xff1565c0) : Color(0xff5b5b5b);
    canvas.drawPath(path_2, paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = selected ? Color(0xff85cbf8) : Color(0xffbfbfbf);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant DartIcon oldDelegate) {
    return oldDelegate.selected != selected;
  }
}
