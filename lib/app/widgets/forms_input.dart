import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class FormsInput extends StatelessWidget {
  FormsInput({
    Key? key,
    required this.hintText,
    this.helperText = '',
    required this.controller,
    this.border,
    this.textStyle,
    this.width,
  }) : super(key: key);

  String hintText;
  String helperText;
  TextEditingController controller;
  InputBorder? border;
  TextStyle? textStyle;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(
          color: Palette.darkGreen,
        ),
      ),
      width: width ?? Get.width * 0.3,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            style: GoogleFonts.poppins(
              textStyle: styles.textFieldTextStyle,
            ),
            decoration: InputDecoration(
              hintStyle: GoogleFonts.poppins(
                textStyle: styles.hintTextStyle,
              ),
              errorStyle: GoogleFonts.poppins(
                textStyle: styles.errorStyle,
              ),
              helperText: helperText,
              hintText: hintText,
              enabledBorder: styles.noBorderTextField,
              focusedBorder: styles.noBorderTextField,
              errorBorder: styles.noBorderTextField,
              focusedErrorBorder: styles.noBorderTextField,
            ),
            controller: controller,
            validator: (String? _) {
              if (controller.text.isEmpty) {
                return 'Por favor, rellena este campo';
              } else {
                return null;
              }
            },
          ),
        ),
      ),
    );
  }
}
