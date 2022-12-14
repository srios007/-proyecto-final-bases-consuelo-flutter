import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';
import 'package:proyecto_bases_final_consuelo/app/widgets/widgets.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TopBarContents(),
        Image.asset(imageReferences.comingSoon, height: Get.height * 0.65),
        const Text(
          'Próximamente...',
          style: TextStyle(
            color: Palette.darkBlue,
            fontWeight: FontWeight.w700,
            fontSize: 48,
          ),
        )
      ],
    );
  }
}
