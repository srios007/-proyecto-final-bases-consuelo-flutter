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
      () => SizedBox(
        width: width ?? Get.width * 0.31,
        height: height ?? 90,
        child: MaterialButton(
          color: color ?? Palette.green,
          elevation: 1,
          onPressed: isLoading.value ? () {} : onPressed,
          child: isLoading.value
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: Palette.white,
                    ),
                  ),
                )
              : icon != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        iconStart! ? icon! : const SizedBox(),
                        iconStart!
                            ? const SizedBox(
                                width: 8,
                              )
                            : const SizedBox(),
                        Center(
                          child: Text(
                            buttonText ?? 'Continuar',
                            style: const TextStyle(
                              color: Palette.white,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        iconStart! == false
                            ? const SizedBox(
                                width: 8,
                              )
                            : const SizedBox(),
                        iconStart! == false ? icon! : const SizedBox(),
                      ],
                    )
                  : Text(
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
    );
  }
}
