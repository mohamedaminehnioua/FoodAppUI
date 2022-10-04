import 'package:flutter/material.dart';

TextStyle textStyle(String fontfamily, Color textColor,
    {FontWeight? fontweight, double? fontsize}) {
  return TextStyle(
    fontSize: fontsize,
    fontFamily: fontfamily,
    color: textColor,
    fontWeight: fontweight,
  );
}
