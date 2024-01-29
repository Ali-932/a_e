import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Text(
  'Hello World',
  style: englishFont(Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
)
 */
TextStyle englishFont({
  Color color = Colors.black,
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}


