import 'package:flutter/material.dart';

Text textstyle1({
  String text,
  double size = 12,
  Color color = Colors.white70,
  TextAlign align = TextAlign.center,
  FontWeight weight = FontWeight.bold,
}) {
  return Text(
    text,
    textAlign: align,
    overflow: TextOverflow.clip,
    style: TextStyle(
      fontFamily: "Roboto",
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}

Text textstyle2(
    {String text,
    double size = 12,
    Color color = Colors.white70,
    TextAlign align = TextAlign.center,
    FontWeight weight = FontWeight.bold}) {
  return Text(
    text,
    textAlign: align,
    overflow: TextOverflow.clip,
    style: TextStyle(
      fontFamily: "FiraCode",
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}
