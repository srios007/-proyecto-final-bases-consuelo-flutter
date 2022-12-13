import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class IsLoading extends StatelessWidget {
  const IsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * 0.48),
      child: const Center(
        child: CircularProgressIndicator(
          color: Palette.green,
        ),
      ),
    );
  }
}
