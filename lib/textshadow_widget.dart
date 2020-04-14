library shadedtext;

import 'package:flutter/material.dart';

typedef ShadedBuilder = Widget Function(
    BuildContext context, String text, Color);

/// A Shadow text widget.
class ShadedText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color shadowColor;
  final double xTans;
  final double yTans;
  final ShadedBuilder shadeBuilder;

  ShadedText(
      {this.text,
      this.textColor,
      this.shadowColor,
      this.xTans,
      this.yTans,
      this.shadeBuilder})
      : assert(text != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        shadeBuilder(context, text, textColor ?? Color(0xdd333333)),
        // 给shadow text 转换位置
        Transform(
          transform:
              Matrix4.translationValues(xTans ?? 15.0, yTans ?? 25.0, 0.0),
          child: shadeBuilder(context, text, shadowColor ?? Color(0xaaaa88aa)),
        )
      ],
    );
  }
}
