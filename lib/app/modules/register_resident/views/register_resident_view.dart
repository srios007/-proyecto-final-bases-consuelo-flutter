import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/controllers/register_resident_controller.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';
import 'package:proyecto_bases_final_consuelo/app/widgets/widgets.dart';

class RegisterResidentView extends GetView<RegisterResidentController> {
  const RegisterResidentView({super.key});
  @override
  Widget build(BuildContext context) {
    return AdaptiveScrollbarCustom(
      verticalScroll: controller.verticalScroll,
      horizontalScroll: controller.horizontalScroll,
      backgroundColor: Palette.white,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: controller.verticalScroll,
          child: Obx(
            () => controller.isLoading.value
                ? const IsLoading()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TopBarContents(),
                      SizedBox(height: 30),
                      Text('Registrar residente')
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
