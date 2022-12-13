import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    Key? key,
    required this.onTap,
    required this.value,
    required this.color,
    this.width,
    this.height,
    this.isNegation = false,
  }) : super(key: key);
  RxBool value;
  void Function() onTap;
  Color color;
  double? width;
  double? height;
  bool isNegation;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(Radius.circular(200)),
        child: SizedBox(
          width: width ?? 18,
          height: height ?? 18,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: color,
              ),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Obx(
              () {
                return Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: isNegation
                        ? !value.value
                            ? color
                            : Palette.white
                        : value.value
                            ? color
                            : Palette.white,
                    shape: BoxShape.circle,
                  ),
                  width: 5,
                  height: 5,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
