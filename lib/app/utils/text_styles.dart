import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class Styles {
  TextStyle tittleRegister = const TextStyle(
    color: Colors.blue,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  TextStyle errorStyle = const TextStyle(
    fontSize: 14,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  TextStyle hintTextStyle = const TextStyle(
    color: Palette.darkBlue,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );
  TextStyle textFieldTextStyle = const TextStyle(
    color: Palette.darkBlue,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  final tabBarTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Palette.darkBlue,
      fontSize: 20,
    ),
  );

  UnderlineInputBorder noBorderTextField = const UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
      width: 2.0,
    ),
  );
}

Styles styles = Styles();
