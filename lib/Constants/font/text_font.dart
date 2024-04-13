
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  AppFonts._();
  static TextStyle pacifico({
    double? size,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return GoogleFonts.pacifico(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
