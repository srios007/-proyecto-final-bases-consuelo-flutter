import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class GreenButton extends StatelessWidget {
  GreenButton({
    Key? key,
    this.buttonText,
    required this.isLoading,
    required this.onPressed,
    this.icon,
    this.width,
    this.height,
    this.color,
    this.iconStart,
  }) : super(key: key);

  RxBool isLoading;
  String? buttonText;
  Widget? icon;
  bool? iconStart;
  void Function() onPressed;
  double? width;
  double? height;
  Color? color;

  @override
  Widget build(BuildContext context) {
    iconStart ??= false;
    return Obx(
      () => CupertinoButton(
        onPressed: isLoading.value ? () {} : onPressed,
        child: Container(
          width: width ?? Get.width * 0.31,
          height: height ?? 90,
          decoration: BoxDecoration(
            color: color ?? Palette.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: isLoading.value
              ? const Center(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Palette.white,
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    buttonText ?? 'Continuar',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Palette.darkBlue,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
