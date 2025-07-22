import 'package:flutter/material.dart';
import 'tech_icon.dart';

class DotNetIcon extends TechIcon {
  DotNetIcon({super.selected = false});

  @override
  DotNetIcon clone() {
    return DotNetIcon(selected: selected);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9166667, size.height * 0.5000000);
    path_0.cubicTo(
      size.width * 0.9166667,
      size.height * 0.6186250,
      size.width * 0.8670625,
      size.height * 0.7256458,
      size.width * 0.7875000,
      size.height * 0.8016875,
    );
    path_0.lineTo(size.width * 0.7873750, size.height * 0.8018125);
    path_0.cubicTo(
      size.width * 0.7125000,
      size.height * 0.8729167,
      size.width * 0.6113333,
      size.height * 0.9166667,
      size.width * 0.5000000,
      size.height * 0.9166667,
    );
    path_0.cubicTo(
      size.width * 0.2699167,
      size.height * 0.9166667,
      size.width * 0.08333333,
      size.height * 0.7300833,
      size.width * 0.08333333,
      size.height * 0.5000000,
    );
    path_0.cubicTo(
      size.width * 0.08333333,
      size.height * 0.3887917,
      size.width * 0.1268125,
      size.height * 0.2877500,
      size.width * 0.1979167,
      size.height * 0.2130208,
    );
    path_0.cubicTo(
      size.width * 0.1980417,
      size.height * 0.2127500,
      size.width * 0.1981875,
      size.height * 0.2126250,
      size.width * 0.1983125,
      size.height * 0.2125000,
    );
    path_0.cubicTo(
      size.width * 0.2743542,
      size.height * 0.1329375,
      size.width * 0.3813750,
      size.height * 0.08333333,
      size.width * 0.5000000,
      size.height * 0.08333333,
    );
    path_0.cubicTo(
      size.width * 0.7300833,
      size.height * 0.08333333,
      size.width * 0.9166667,
      size.height * 0.2699167,
      size.width * 0.9166667,
      size.height * 0.5000000,
    );
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7994792, size.height * 0.7887917);
    path_1.cubicTo(
      size.width * 0.7955833,
      size.height * 0.7932292,
      size.width * 0.7915417,
      size.height * 0.7975208,
      size.width * 0.7875000,
      size.height * 0.8016875,
    );
    path_1.lineTo(size.width * 0.7873750, size.height * 0.8018125);
    path_1.cubicTo(
      size.width * 0.7125000,
      size.height * 0.8729167,
      size.width * 0.6113333,
      size.height * 0.9166667,
      size.width * 0.5000000,
      size.height * 0.9166667,
    );
    path_1.cubicTo(
      size.width * 0.2699167,
      size.height * 0.9166667,
      size.width * 0.08333333,
      size.height * 0.7300833,
      size.width * 0.08333333,
      size.height * 0.5000000,
    );
    path_1.cubicTo(
      size.width * 0.08333333,
      size.height * 0.3887917,
      size.width * 0.1268125,
      size.height * 0.2877500,
      size.width * 0.1979167,
      size.height * 0.2130208,
    );
    path_1.cubicTo(
      size.width * 0.1980417,
      size.height * 0.2127500,
      size.width * 0.1981875,
      size.height * 0.2126250,
      size.width * 0.1983125,
      size.height * 0.2125000,
    );
    path_1.cubicTo(
      size.width * 0.2024792,
      size.height * 0.2084583,
      size.width * 0.2067708,
      size.height * 0.2044375,
      size.width * 0.2112083,
      size.height * 0.2005208,
    );
    path_1.lineTo(size.width * 0.7994792, size.height * 0.7887917);
    path_1.close();

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.1797083, size.height * 0.5683542);
    path_2.cubicTo(
      size.width * 0.1747917,
      size.height * 0.5684375,
      size.width * 0.1700625,
      size.height * 0.5664583,
      size.width * 0.1666875,
      size.height * 0.5628958,
    );
    path_2.cubicTo(
      size.width * 0.1632083,
      size.height * 0.5594583,
      size.width * 0.1612917,
      size.height * 0.5547708,
      size.width * 0.1613542,
      size.height * 0.5498750,
    );
    path_2.cubicTo(
      size.width * 0.1613125,
      size.height * 0.5450000,
      size.width * 0.1632500,
      size.height * 0.5403125,
      size.width * 0.1666875,
      size.height * 0.5368542,
    );
    path_2.cubicTo(
      size.width * 0.1700417,
      size.height * 0.5332292,
      size.width * 0.1747708,
      size.height * 0.5311875,
      size.width * 0.1797083,
      size.height * 0.5312500,
    );
    path_2.cubicTo(
      size.width * 0.1846458,
      size.height * 0.5312292,
      size.width * 0.1893542,
      size.height * 0.5332708,
      size.width * 0.1927292,
      size.height * 0.5368542,
    );
    path_2.cubicTo(
      size.width * 0.1962500,
      size.height * 0.5402708,
      size.width * 0.1982083,
      size.height * 0.5449792,
      size.width * 0.1981875,
      size.height * 0.5498750,
    );
    path_2.cubicTo(
      size.width * 0.1982292,
      size.height * 0.5547917,
      size.width * 0.1962500,
      size.height * 0.5595000,
      size.width * 0.1927292,
      size.height * 0.5628958,
    );
    path_2.cubicTo(
      size.width * 0.1893125,
      size.height * 0.5664167,
      size.width * 0.1846042,
      size.height * 0.5683958,
      size.width * 0.1797083,
      size.height * 0.5683542,
    );
    path_2.close();

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4384167, size.height * 0.5651042);
    path_3.lineTo(size.width * 0.4042917, size.height * 0.5651042);
    path_3.lineTo(size.width * 0.2822917, size.height * 0.3757917);
    path_3.cubicTo(
      size.width * 0.2792500,
      size.height * 0.3711250,
      size.width * 0.2767292,
      size.height * 0.3661458,
      size.width * 0.2747292,
      size.height * 0.3609583,
    );
    path_3.lineTo(size.width * 0.2736875, size.height * 0.3609583);
    path_3.cubicTo(
      size.width * 0.2748542,
      size.height * 0.3717708,
      size.width * 0.2752917,
      size.height * 0.3826458,
      size.width * 0.2749792,
      size.height * 0.3935000,
    );
    path_3.lineTo(size.width * 0.2749792, size.height * 0.5651042);
    path_3.lineTo(size.width * 0.2472500, size.height * 0.5651042);
    path_3.lineTo(size.width * 0.2472500, size.height * 0.3277292);
    path_3.lineTo(size.width * 0.2833125, size.height * 0.3277292);
    path_3.lineTo(size.width * 0.4020625, size.height * 0.5136667);
    path_3.cubicTo(
      size.width * 0.4070000,
      size.height * 0.5213958,
      size.width * 0.4102292,
      size.height * 0.5266875,
      size.width * 0.4116875,
      size.height * 0.5295625,
    );
    path_3.lineTo(size.width * 0.4123333, size.height * 0.5295625);
    path_3.cubicTo(
      size.width * 0.4109583,
      size.height * 0.5179792,
      size.width * 0.4103958,
      size.height * 0.5063333,
      size.width * 0.4106458,
      size.height * 0.4946667,
    );
    path_3.lineTo(size.width * 0.4106458, size.height * 0.3277500);
    path_3.lineTo(size.width * 0.4383750, size.height * 0.3277500);
    path_3.lineTo(size.width * 0.4383750, size.height * 0.5651042);
    path_3.close();

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6261875, size.height * 0.5651042);
    path_4.lineTo(size.width * 0.5000208, size.height * 0.5651042);
    path_4.lineTo(size.width * 0.5000208, size.height * 0.3277292);
    path_4.lineTo(size.width * 0.6203333, size.height * 0.3277292);
    path_4.lineTo(size.width * 0.6203333, size.height * 0.3528542);
    path_4.lineTo(size.width * 0.5284167, size.height * 0.3528542);
    path_4.lineTo(size.width * 0.5284167, size.height * 0.4317708);
    path_4.lineTo(size.width * 0.6141042, size.height * 0.4317708);
    path_4.lineTo(size.width * 0.6141042, size.height * 0.4567708);
    path_4.lineTo(size.width * 0.5284167, size.height * 0.4567708);
    path_4.lineTo(size.width * 0.5284167, size.height * 0.5390625);
    path_4.lineTo(size.width * 0.6263333, size.height * 0.5390625);
    path_4.lineTo(size.width * 0.6261875, size.height * 0.5651042);
    path_4.close();

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.8125208, size.height * 0.3528750);
    path_5.lineTo(size.width * 0.7435208, size.height * 0.3528750);
    path_5.lineTo(size.width * 0.7435208, size.height * 0.5651250);
    path_5.lineTo(size.width * 0.7157917, size.height * 0.5651250);
    path_5.lineTo(size.width * 0.7157917, size.height * 0.3528750);
    path_5.lineTo(size.width * 0.6475625, size.height * 0.3528750);
    path_5.lineTo(size.width * 0.6475625, size.height * 0.3277500);
    path_5.lineTo(size.width * 0.8125417, size.height * 0.3277500);
    path_5.lineTo(size.width * 0.8125417, size.height * 0.3528750);
    path_5.close();

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4234583, size.height * 0.7265625);
    path_6.cubicTo(
      size.width * 0.4140625,
      size.height * 0.7311250,
      size.width * 0.4036875,
      size.height * 0.7333125,
      size.width * 0.3932500,
      size.height * 0.7329375,
    );
    path_6.cubicTo(
      size.width * 0.3792083,
      size.height * 0.7335625,
      size.width * 0.3656042,
      size.height * 0.7281042,
      size.width * 0.3558750,
      size.height * 0.7179583,
    );
    path_6.cubicTo(
      size.width * 0.3463125,
      size.height * 0.7072500,
      size.width * 0.3412708,
      size.height * 0.6932500,
      size.width * 0.3418125,
      size.height * 0.6788958,
    );
    path_6.cubicTo(
      size.width * 0.3411042,
      size.height * 0.6631875,
      size.width * 0.3467917,
      size.height * 0.6478750,
      size.width * 0.3575625,
      size.height * 0.6364375,
    );
    path_6.cubicTo(
      size.width * 0.3680833,
      size.height * 0.6256667,
      size.width * 0.3826250,
      size.height * 0.6198125,
      size.width * 0.3976667,
      size.height * 0.6202917,
    );
    path_6.cubicTo(
      size.width * 0.4065625,
      size.height * 0.6199792,
      size.width * 0.4154375,
      size.height * 0.6215417,
      size.width * 0.4237083,
      size.height * 0.6248542,
    );
    path_6.lineTo(size.width * 0.4237083, size.height * 0.6378750);
    path_6.cubicTo(
      size.width * 0.4157500,
      size.height * 0.6334583,
      size.width * 0.4067708,
      size.height * 0.6312292,
      size.width * 0.3976667,
      size.height * 0.6313750,
    );
    path_6.cubicTo(
      size.width * 0.3860625,
      size.height * 0.6310417,
      size.width * 0.3748750,
      size.height * 0.6358125,
      size.width * 0.3670625,
      size.height * 0.6443958,
    );
    path_6.cubicTo(
      size.width * 0.3589375,
      size.height * 0.6536458,
      size.width * 0.3547292,
      size.height * 0.6656875,
      size.width * 0.3553542,
      size.height * 0.6779792,
    );
    path_6.cubicTo(
      size.width * 0.3547500,
      size.height * 0.6896250,
      size.width * 0.3586667,
      size.height * 0.7010625,
      size.width * 0.3662917,
      size.height * 0.7098750,
    );
    path_6.cubicTo(
      size.width * 0.3736875,
      size.height * 0.7178333,
      size.width * 0.3842083,
      size.height * 0.7221667,
      size.width * 0.3950625,
      size.height * 0.7217292,
    );
    path_6.cubicTo(
      size.width * 0.4050625,
      size.height * 0.7220000,
      size.width * 0.4149375,
      size.height * 0.7194583,
      size.width * 0.4235833,
      size.height * 0.7144375,
    );
    path_6.lineTo(size.width * 0.4234583, size.height * 0.7265625);
    path_6.close();

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.4767083, size.height * 0.7329375);
    path_7.cubicTo(
      size.width * 0.4662292,
      size.height * 0.7332708,
      size.width * 0.4561042,
      size.height * 0.7290417,
      size.width * 0.4489792,
      size.height * 0.7213542,
    );
    path_7.cubicTo(
      size.width * 0.4418542,
      size.height * 0.7134167,
      size.width * 0.4381667,
      size.height * 0.7029792,
      size.width * 0.4386875,
      size.height * 0.6923125,
    );
    path_7.cubicTo(
      size.width * 0.4380208,
      size.height * 0.6810417,
      size.width * 0.4419167,
      size.height * 0.6699583,
      size.width * 0.4495000,
      size.height * 0.6615833,
    );
    path_7.cubicTo(
      size.width * 0.4572292,
      size.height * 0.6540417,
      size.width * 0.4677500,
      size.height * 0.6500208,
      size.width * 0.4785417,
      size.height * 0.6505208,
    );
    path_7.cubicTo(
      size.width * 0.4887500,
      size.height * 0.6499792,
      size.width * 0.4986875,
      size.height * 0.6539167,
      size.width * 0.5057500,
      size.height * 0.6613333,
    );
    path_7.cubicTo(
      size.width * 0.5126667,
      size.height * 0.6696667,
      size.width * 0.5161667,
      size.height * 0.6803333,
      size.width * 0.5155208,
      size.height * 0.6911458,
    );
    path_7.cubicTo(
      size.width * 0.5160625,
      size.height * 0.7021250,
      size.width * 0.5122708,
      size.height * 0.7128750,
      size.width * 0.5049792,
      size.height * 0.7211042,
    );
    path_7.cubicTo(
      size.width * 0.4977083,
      size.height * 0.7289375,
      size.width * 0.4873958,
      size.height * 0.7332708,
      size.width * 0.4767083,
      size.height * 0.7329375,
    );
    path_7.close();
    path_7.moveTo(size.width * 0.4776250, size.height * 0.6617083);
    path_7.cubicTo(
      size.width * 0.4703750,
      size.height * 0.6613958,
      size.width * 0.4633750,
      size.height * 0.6644167,
      size.width * 0.4586250,
      size.height * 0.6699167,
    );
    path_7.cubicTo(
      size.width * 0.4536250,
      size.height * 0.6763750,
      size.width * 0.4511250,
      size.height * 0.6844167,
      size.width * 0.4515833,
      size.height * 0.6925833,
    );
    path_7.cubicTo(
      size.width * 0.4511250,
      size.height * 0.7005000,
      size.width * 0.4536250,
      size.height * 0.7082917,
      size.width * 0.4586250,
      size.height * 0.7144583,
    );
    path_7.cubicTo(
      size.width * 0.4634375,
      size.height * 0.7198750,
      size.width * 0.4704167,
      size.height * 0.7228333,
      size.width * 0.4776250,
      size.height * 0.7225417,
    );
    path_7.cubicTo(
      size.width * 0.4847083,
      size.height * 0.7229583,
      size.width * 0.4915833,
      size.height * 0.7200833,
      size.width * 0.4962500,
      size.height * 0.7147292,
    );
    path_7.cubicTo(
      size.width * 0.5009792,
      size.height * 0.7082708,
      size.width * 0.5032917,
      size.height * 0.7003333,
      size.width * 0.5027500,
      size.height * 0.6923333,
    );
    path_7.cubicTo(
      size.width * 0.5032708,
      size.height * 0.6842917,
      size.width * 0.5009583,
      size.height * 0.6763333,
      size.width * 0.4962500,
      size.height * 0.6698125,
    );
    path_7.cubicTo(
      size.width * 0.4916458,
      size.height * 0.6643333,
      size.width * 0.4847500,
      size.height * 0.6613542,
      size.width * 0.4776250,
      size.height * 0.6617083,
    );
    path_7.close();

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5763125, size.height * 0.6656250);
    path_8.cubicTo(
      size.width * 0.5735000,
      size.height * 0.6637917,
      size.width * 0.5701667,
      size.height * 0.6629167,
      size.width * 0.5668125,
      size.height * 0.6631458,
    );
    path_8.cubicTo(
      size.width * 0.5614792,
      size.height * 0.6633333,
      size.width * 0.5566042,
      size.height * 0.6661667,
      size.width * 0.5537917,
      size.height * 0.6707083,
    );
    path_8.cubicTo(
      size.width * 0.5499167,
      size.height * 0.6768542,
      size.width * 0.5480417,
      size.height * 0.6840417,
      size.width * 0.5484583,
      size.height * 0.6912917,
    );
    path_8.lineTo(size.width * 0.5484583, size.height * 0.7311250);
    path_8.lineTo(size.width * 0.5354375, size.height * 0.7311250);
    path_8.lineTo(size.width * 0.5354375, size.height * 0.6530000);
    path_8.lineTo(size.width * 0.5484583, size.height * 0.6530000);
    path_8.lineTo(size.width * 0.5484583, size.height * 0.6692708);
    path_8.lineTo(size.width * 0.5484583, size.height * 0.6692708);
    path_8.cubicTo(
      size.width * 0.5498958,
      size.height * 0.6642292,
      size.width * 0.5527292,
      size.height * 0.6597083,
      size.width * 0.5566667,
      size.height * 0.6562500,
    );
    path_8.cubicTo(
      size.width * 0.5600625,
      size.height * 0.6533125,
      size.width * 0.5644167,
      size.height * 0.6516875,
      size.width * 0.5688958,
      size.height * 0.6516875,
    );
    path_8.cubicTo(
      size.width * 0.5714167,
      size.height * 0.6515833,
      size.width * 0.5739375,
      size.height * 0.6519375,
      size.width * 0.5763125,
      size.height * 0.6527292,
    );
    path_8.lineTo(size.width * 0.5763125, size.height * 0.6656250);
    path_8.close();

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.6526250, size.height * 0.6953125);
    path_9.lineTo(size.width * 0.5975417, size.height * 0.6953125);
    path_9.cubicTo(
      size.width * 0.5971667,
      size.height * 0.7025833,
      size.width * 0.5995417,
      size.height * 0.7097500,
      size.width * 0.6041875,
      size.height * 0.7153750,
    );
    path_9.cubicTo(
      size.width * 0.6090625,
      size.height * 0.7202500,
      size.width * 0.6157917,
      size.height * 0.7227917,
      size.width * 0.6226667,
      size.height * 0.7224167,
    );
    path_9.cubicTo(
      size.width * 0.6315000,
      size.height * 0.7223333,
      size.width * 0.6400208,
      size.height * 0.7192500,
      size.width * 0.6468958,
      size.height * 0.7136875,
    );
    path_9.lineTo(size.width * 0.6468958, size.height * 0.7253958);
    path_9.cubicTo(
      size.width * 0.6388542,
      size.height * 0.7307083,
      size.width * 0.6293125,
      size.height * 0.7333125,
      size.width * 0.6196875,
      size.height * 0.7328125,
    );
    path_9.cubicTo(
      size.width * 0.6098542,
      size.height * 0.7333125,
      size.width * 0.6003125,
      size.height * 0.7293958,
      size.width * 0.5936458,
      size.height * 0.7221250,
    );
    path_9.cubicTo(
      size.width * 0.5868750,
      size.height * 0.7136667,
      size.width * 0.5834792,
      size.height * 0.7030000,
      size.width * 0.5841458,
      size.height * 0.6921667,
    );
    path_9.cubicTo(
      size.width * 0.5836875,
      size.height * 0.6813333,
      size.width * 0.5873542,
      size.height * 0.6707083,
      size.width * 0.5944375,
      size.height * 0.6624792,
    );
    path_9.cubicTo(
      size.width * 0.6009583,
      size.height * 0.6549375,
      size.width * 0.6105208,
      size.height * 0.6507292,
      size.width * 0.6204792,
      size.height * 0.6510208,
    );
    path_9.cubicTo(
      size.width * 0.6294792,
      size.height * 0.6505208,
      size.width * 0.6382083,
      size.height * 0.6541667,
      size.width * 0.6441875,
      size.height * 0.6609167,
    );
    path_9.cubicTo(
      size.width * 0.6501875,
      size.height * 0.6688125,
      size.width * 0.6531458,
      size.height * 0.6786250,
      size.width * 0.6525208,
      size.height * 0.6885208,
    );
    path_9.lineTo(size.width * 0.6526250, size.height * 0.6953125);
    path_9.close();
    path_9.moveTo(size.width * 0.6396042, size.height * 0.6847708);
    path_9.cubicTo(
      size.width * 0.6398750,
      size.height * 0.6787292,
      size.width * 0.6380208,
      size.height * 0.6727917,
      size.width * 0.6343958,
      size.height * 0.6679792,
    );
    path_9.cubicTo(
      size.width * 0.6307917,
      size.height * 0.6638958,
      size.width * 0.6255208,
      size.height * 0.6616875,
      size.width * 0.6200625,
      size.height * 0.6619792,
    );
    path_9.cubicTo(
      size.width * 0.6143958,
      size.height * 0.6619167,
      size.width * 0.6089583,
      size.height * 0.6642292,
      size.width * 0.6050833,
      size.height * 0.6683542,
    );
    path_9.cubicTo(
      size.width * 0.6007917,
      size.height * 0.6728958,
      size.width * 0.5981042,
      size.height * 0.6786875,
      size.width * 0.5973958,
      size.height * 0.6848958,
    );
    path_9.lineTo(size.width * 0.6396042, size.height * 0.6847708);
    path_9.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = selected
        ? Color(0xff6a1b9a)
        : Color(
            0xff7f7f7f,
          ); // Medium gray, darker than b0b0b0 but lighter than 414141
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = selected
        ? Color(0xff7b1fa2) // Original purple
        : Color(
            0xff8c8c8c,
          ); // Slightly lighter than 7f7f7f but darker than bdbdbd
    canvas.drawPath(path_1, paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Color(0xffffffff);
    canvas.drawPath(path_2, paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Color(0xffffffff);
    canvas.drawPath(path_3, paint3Fill);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = Color(0xffffffff);
    canvas.drawPath(path_4, paint4Fill);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = Color(0xffffffff);
    canvas.drawPath(path_5, paint5Fill);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = Color(0xfff2f2f2);
    canvas.drawPath(path_6, paint6Fill);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = Color(0xfff2f2f2);
    canvas.drawPath(path_7, paint7Fill);

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = Color(0xfff2f2f2);
    canvas.drawPath(path_9, paint9Fill);
  }

  @override
  bool shouldRepaint(covariant DotNetIcon oldDelegate) {
    return oldDelegate.selected != selected;
  }
}
