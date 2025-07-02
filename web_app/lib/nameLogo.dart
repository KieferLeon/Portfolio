import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class Namelogo extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
    final originalWidth = 613.81519;
    final originalHeight = 153.57507;

    // Calculate uniform scale to fit inside size
    final scaleX = size.width / originalWidth;
    final scaleY = size.height / originalHeight;
    final scale = scaleX < scaleY ? scaleX : scaleY;

    final offsetX = 564.0;
    final offsetY = 37.0;

    // Calculate translation to center the path

    // Save canvas state
    canvas.save();

    // Translate and scale uniformly
    canvas.scale(scale);

    Path path_0 = Path();
    path_0.moveTo(564 - offsetX, 55.607079 - offsetY);
    path_0.cubicTo(564 - offsetX, 55.607079 - offsetY, 565.39182 - offsetX, 60 - offsetY, 568.39182 - offsetX, 60 - offsetY);
    path_0.cubicTo(574 - offsetX, 60 - offsetY, 580.66193 - offsetX, 37 - offsetY, 576 - offsetX, 37 - offsetY);
    path_0.cubicTo(571 - offsetX, 37 - offsetY, 571 - offsetX, 57 - offsetY, 576 - offsetX, 57 - offsetY);
    path_0.cubicTo(585 - offsetX, 57 - offsetY, 589 - offsetX, 50 - offsetY, 584 - offsetX, 50 - offsetY);
    path_0.cubicTo(578 - offsetX, 50 - offsetY, 578 - offsetX, 60 - offsetY, 584 - offsetX, 60 - offsetY);
    path_0.cubicTo(588 - offsetX, 60 - offsetY, 589 - offsetX, 50 - offsetY, 594 - offsetX, 50 - offsetY);
    path_0.cubicTo(599 - offsetX, 50 - offsetY, 598 - offsetX, 60 - offsetY, 592 - offsetX, 60 - offsetY);
    path_0.cubicTo(588 - offsetX, 60 - offsetY, 590.39235 - offsetX, 46.594899 - offsetY, 597 - offsetX, 51 - offsetY);
    path_0.cubicTo(600 - offsetX, 53 - offsetY, 602 - offsetX, 44.454282 - offsetY, 602 - offsetX, 51 - offsetY);
    path_0.lineTo(602 - offsetX, 60 - offsetY);
    path_0.cubicTo(602 - offsetX, 61 - offsetY, 601.59074 - offsetX, 48.951769 - offsetY, 606 - offsetX, 49 - offsetY);
    path_0.cubicTo(609.25301 - offsetX, 49.03558 - offsetY, 607.11309 - offsetX, 55.339283 - offsetY, 608 - offsetX, 58 - offsetY);
    path_0.cubicTo(609 - offsetX, 61 - offsetY, 611 - offsetX, 59 - offsetY, 612.72325 - offsetX, 56.504298 - offsetY);
    path_0.cubicTo(617.93577 - offsetX, 48.955246 - offsetY, 622.43252 - offsetX, 37 - offsetY, 619 - offsetX, 37 - offsetY);
    path_0.cubicTo(614 - offsetX, 37 - offsetY, 614.32505 - offsetX, 52.789456 - offsetY, 614.6201 - offsetX, 55.137043 - offsetY);
    path_0.cubicTo(615.73403 - offsetX, 64 - offsetY, 614.02074 - offsetX, 58.122136 - offsetY, 616 - offsetX, 54 - offsetY);
    path_0.cubicTo(617.21098 - offsetX, 51.971796 - offsetY, 619 - offsetX, 51 - offsetY, 620 - offsetX, 53 - offsetY);
    path_0.cubicTo(620.82095 - offsetX, 54.641891 - offsetY, 619.27602 - offsetX, 56.456298 - offsetY, 618.0183 - offsetX, 55.792645 - offsetY);
    path_0.cubicTo(616.51612 - offsetX, 55 - offsetY, 616.25581 - offsetX, 56.834878 - offsetY, 617 - offsetX, 58 - offsetY);
    path_0.cubicTo(617.63872 - offsetX, 59 - offsetY, 618 - offsetX, 60 - offsetY, 621 - offsetX, 60 - offsetY);
    path_0.cubicTo(627 - offsetX, 60 - offsetY, 625.68796 - offsetX, 50.019687 - offsetY, 626 - offsetX, 50 - offsetY);
    path_0.cubicTo(626.25615 - offsetX, 49.98384 - offsetY, 625.00021 - offsetX, 57.045516 - offsetY, 630 - offsetX, 57 - offsetY);
    path_0.cubicTo(640.64467 - offsetX, 56.9031 - offsetY, 643.122 - offsetX, 50 - offsetY, 637 - offsetX, 50 - offsetY);
    path_0.cubicTo(631 - offsetX, 50 - offsetY, 633.29982 - offsetX, 62.995402999999996 - offsetY, 639 - offsetX, 60 - offsetY);
    path_0.cubicTo(651.57298 - offsetX, 53.392986 - offsetY, 653 - offsetX, 37 - offsetY, 650 - offsetX, 37 - offsetY);
    path_0.cubicTo(647 - offsetX, 37 - offsetY, 646.92539 - offsetX, 55.115803 - offsetY, 648 - offsetX, 59 - offsetY);
    path_0.cubicTo(649.38331 - offsetX, 64 - offsetY, 645.36802 - offsetX, 64.104062 - offsetY, 645 - offsetX, 63 - offsetY);
    path_0.cubicTo(644 - offsetX, 60 - offsetY, 646.53149 - offsetX, 57 - offsetY, 650 - offsetX, 57 - offsetY);
    path_0.cubicTo(658 - offsetX, 57 - offsetY, 660.36836 - offsetX, 50 - offsetY, 656.36836 - offsetX, 50 - offsetY);
    path_0.cubicTo(651.36836 - offsetX, 50 - offsetY, 651.0113100000001 - offsetX, 60.300641999999996 - offsetY, 655 - offsetX, 60 - offsetY);
    path_0.cubicTo(660 - offsetX, 59.623131 - offsetY, 660.55994 - offsetX, 50 - offsetY, 664 - offsetX, 50 - offsetY);
    path_0.cubicTo(667 - offsetX, 50 - offsetY, 665 - offsetX, 60 - offsetY, 666 - offsetX, 60 - offsetY);
    path_0.cubicTo(667.07853 - offsetX, 60 - offsetY, 665.31117 - offsetX, 50 - offsetY, 668.58965 - offsetX, 50 - offsetY);
    path_0.cubicTo(671.56988 - offsetX, 50 - offsetY, 673 - offsetX, 50 - offsetY, 674 - offsetX, 48 - offsetY);

    Paint paint_0_stroke = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = size.width * 0.002069010 / scaleX // compensate scaling on strokeWidth
    ..color = Color(0xff000000).withOpacity(1)
    ..strokeCap = StrokeCap.round;

  canvas.drawPath(path_0, paint_0_stroke);

  canvas.restore();

  // Draw the circle separately using size-based positioning and sizing
  Paint paint_1_fill = Paint()
    ..style = PaintingStyle.fill
    ..color = Color(0xff000000).withOpacity(1);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}