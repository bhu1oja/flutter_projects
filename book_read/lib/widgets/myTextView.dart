import 'package:flutter/material.dart';

class MyTextView {
  Widget myTextViewDynamic(
      double cPadLeft,
      double cPadTop,
      double cPadRight,
      double cPadBottom,
      sometext,
      Color color,
      double fontsize,
      FontWeight fontweight) {
    return Container(
      padding: EdgeInsets.fromLTRB(cPadLeft, cPadTop, cPadRight, cPadBottom),
      child: Text(
        sometext,
        style:
            TextStyle(color: color, fontSize: fontsize, fontWeight: fontweight),
      ),
    );
  }

  Widget myTextViewStatic(double containerpadding, sometext, Color color,
      double fontsize, FontWeight fontweight) {
    return Container(
      padding: EdgeInsets.all(containerpadding),
      child: Text(
        sometext,
        style:
            TextStyle(color: color, fontSize: fontsize, fontWeight: fontweight),
      ),
    );
  }
}
