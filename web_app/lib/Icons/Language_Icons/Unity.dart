import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Language_icon.dart';
import 'dart:ui' as ui;

//Copy this CustomPainter code to the Bottom of the File
class UnityIcon extends LanguageIcon {
  bool selected;

  UnityIcon({this.selected = false});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5032344, size.height * 0.9603906);
    path_0.lineTo(size.width * 0.8751563, size.height * 0.7456250);
    path_0.lineTo(size.width * 0.7326016, size.height * 0.6631797);
    path_0.lineTo(size.width * 0.5868516, size.height * 0.7473750);
    path_0.arcToPoint(
      Offset(size.width * 0.5787656, size.height * 0.7473125),
      radius: Radius.elliptical(
        size.width * 0.008281250,
        size.height * 0.008281250,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_0.arcToPoint(
      Offset(size.width * 0.5746797, size.height * 0.7402969),
      radius: Radius.elliptical(
        size.width * 0.008234375,
        size.height * 0.008234375,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_0.lineTo(size.width * 0.5746797, size.height * 0.5403438);
    path_0.cubicTo(
      size.width * 0.5746797,
      size.height * 0.5344531,
      size.width * 0.5777266,
      size.height * 0.5291172,
      size.width * 0.5828281,
      size.height * 0.5261875,
    );
    path_0.lineTo(size.width * 0.7560156, size.height * 0.4261719);
    path_0.arcToPoint(
      Offset(size.width * 0.7641016, size.height * 0.4262344),
      radius: Radius.elliptical(
        size.width * 0.008046875,
        size.height * 0.008046875,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_0.cubicTo(
      size.width * 0.7666328,
      size.height * 0.4276406,
      size.width * 0.7682187,
      size.height * 0.4302969,
      size.width * 0.7682422,
      size.height * 0.4331875,
    );
    path_0.lineTo(size.width * 0.7682422, size.height * 0.6014922);
    path_0.lineTo(size.width * 0.9108906, size.height * 0.6838906);
    path_0.lineTo(size.width * 0.9108906, size.height * 0.2543750);
    path_0.lineTo(size.width * 0.5032344, size.height * 0.4896875);
    path_0.close();
    path_0.moveTo(size.width * 0.5032344, size.height * 0.9603906);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4198281, size.height * 0.7474688);
    path_1.lineTo(size.width * 0.2740156, size.height * 0.6631719);
    path_1.lineTo(size.width * 0.1313516, size.height * 0.7456094);
    path_1.lineTo(size.width * 0.5032344, size.height * 0.9603906);
    path_1.lineTo(size.width * 0.5032344, size.height * 0.4896875);
    path_1.lineTo(size.width * 0.09570313, size.height * 0.2543672);
    path_1.lineTo(size.width * 0.09570313, size.height * 0.6838672);
    path_1.lineTo(size.width * 0.2383125, size.height * 0.6015000);
    path_1.lineTo(size.width * 0.2383125, size.height * 0.4332031);
    path_1.cubicTo(
      size.width * 0.2383750,
      size.height * 0.4303125,
      size.width * 0.2399297,
      size.height * 0.4276563,
      size.width * 0.2424297,
      size.height * 0.4262500,
    );
    path_1.arcToPoint(
      Offset(size.width * 0.2505547, size.height * 0.4261875),
      radius: Radius.elliptical(
        size.width * 0.008125000,
        size.height * 0.008125000,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.4238281, size.height * 0.5261875);
    path_1.arcToPoint(
      Offset(size.width * 0.4319766, size.height * 0.5403516),
      radius: Radius.elliptical(
        size.width * 0.01636719,
        size.height * 0.01636719,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_1.lineTo(size.width * 0.4319766, size.height * 0.7403359);
    path_1.cubicTo(
      size.width * 0.4319453,
      size.height * 0.7432266,
      size.width * 0.4304141,
      size.height * 0.7458828,
      size.width * 0.4279141,
      size.height * 0.7473828,
    );
    path_1.cubicTo(
      size.width * 0.4254453,
      size.height * 0.7488516,
      size.width * 0.4223672,
      size.height * 0.7488750,
      size.width * 0.4198281,
      size.height * 0.7474766,
    );

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5389687, size.height * 0.03960938);
    path_2.lineTo(size.width * 0.5389687, size.height * 0.2043437);
    path_2.lineTo(size.width * 0.6847266, size.height * 0.2884844);
    path_2.cubicTo(
      size.width * 0.6872266,
      size.height * 0.2899453,
      size.width * 0.6887187,
      size.height * 0.2926328,
      size.width * 0.6887187,
      size.height * 0.2955625,
    );
    path_2.cubicTo(
      size.width * 0.6887187,
      size.height * 0.2984609,
      size.width * 0.6871953,
      size.height * 0.3011172,
      size.width * 0.6847266,
      size.height * 0.3025781,
    );
    path_2.lineTo(size.width * 0.5114766, size.height * 0.4026562);
    path_2.arcToPoint(
      Offset(size.width * 0.4951484, size.height * 0.4026562),
      radius: Radius.elliptical(
        size.width * 0.01656250,
        size.height * 0.01656250,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_2.lineTo(size.width * 0.3219531, size.height * 0.3025781);
    path_2.arcToPoint(
      Offset(size.width * 0.3179219, size.height * 0.2955625),
      radius: Radius.elliptical(
        size.width * 0.008070312,
        size.height * 0.008070312,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_2.arcToPoint(
      Offset(size.width * 0.3219531, size.height * 0.2884844),
      radius: Radius.elliptical(
        size.width * 0.008109375,
        size.height * 0.008109375,
      ),
      rotation: 0,
      largeArc: false,
      clockwise: true,
    );
    path_2.lineTo(size.width * 0.4676719, size.height * 0.2043437);
    path_2.lineTo(size.width * 0.4676719, size.height * 0.03960938);
    path_2.lineTo(size.width * 0.09570313, size.height * 0.2543750);
    path_2.lineTo(size.width * 0.5032344, size.height * 0.4896875);
    path_2.lineTo(size.width * 0.9108594, size.height * 0.2543750);
    path_2.close();
    path_2.moveTo(size.width * 0.5389687, size.height * 0.03960938);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = selected
        ? Color(0xff000000).withOpacity(1.0)
        : Color(0xFF999999);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = selected
        ? Color(0xff4d4d4d).withOpacity(1.0)
        : Color(0xFFB3B3B3);
    canvas.drawPath(path_1, paint_1_fill);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = selected ? Color(0xFF808080) : Color(0xFFD9D9D9);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant UnityIcon oldDelegate) {
    // Repaint only if 'selected' changed
    return oldDelegate.selected != selected;
  }
}
