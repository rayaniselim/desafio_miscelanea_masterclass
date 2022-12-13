import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  /// TODO: configurar todas as fontes de acordo com o mockup
  static TextStyle headline1 = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static TextStyle headline2 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bodyText1 = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyText2 = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
