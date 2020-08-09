///
/// PremadeStyle.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: Customisable text styles.
///

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    style: GoogleFonts.roboto(
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
    style: GoogleFonts.firaCode(
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}

Text textstyle3({
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
    style: GoogleFonts.josefinSans(
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}

Text textstyle4({
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
    style: GoogleFonts.exo(
      fontWeight: weight,
      color: color,
      fontSize: size,
    ),
  );
}
