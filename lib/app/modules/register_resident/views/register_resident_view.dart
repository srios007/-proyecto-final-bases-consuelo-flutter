import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/controllers/register_resident_controller.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/widgets/type_id_selector.dart';
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
                : Form(
                    key: key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TopBarContents(),
                        const SizedBox(height: 30),
                        TypeIdSelector(
                          controller: controller,
                          items: constants.typeId,
                          selectedItem: controller.howFindUs,
                        ),
                        const SizedBox(height: 30),
                        FormsInput(
                          hintText: 'Identificación persona',
                          controller: controller.idController,
                        ),
                        const SizedBox(height: 30),
                        FormsInput(
                          hintText: 'Primer nombre',
                          controller: controller.firstNameController,
                        ),
                        const SizedBox(height: 30),
                        FormsInput(
                          hintText: 'Segundo nombre',
                          controller: controller.secondNameController,
                        ),
                        const SizedBox(height: 30),
                        FormsInput(
                          hintText: 'Primer apellido',
                          controller: controller.lastNameController,
                        ),
                        const SizedBox(height: 30),
                        FormsInput(
                          hintText: 'Segundo apellido',
                          controller: controller.secondLastNameController,
                        ),
                        const SizedBox(height: 30),
                        TypeIdSelector(
                          controller: controller,
                          items: constants.genders,
                          selectedItem: controller.gender,
                        ),
                        const SizedBox(height: 30),
                        Text('¿Es Propietario?', style: styles.labelStyle),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sí', style: styles.labelStyle),
                            const SizedBox(width: 5),
                            Obx(() {
                              return CustomCheckBox(
                                onTap: controller.onChangedIsOwner,
                                value: controller.isOwner,
                                color: controller.isOwner.value
                                    ? Palette.green
                                    : Palette.darkBlue,
                              );
                            }),
                            const SizedBox(width: 30),
                            Text('No', style: styles.labelStyle),
                            const SizedBox(width: 5),
                            Obx(() {
                              return CustomCheckBox(
                                onTap: controller.onChangedIsOwner,
                                value: controller.isOwner,
                                isNegation: true,
                                color: !controller.isOwner.value
                                    ? Palette.green
                                    : Palette.darkBlue,
                              );
                            }),
                          ],
                        ),
                        Obx(() {
                          return controller.isOwner.value
                              ? Column(
                                  children: [
                                    const SizedBox(height: 30),
                                    FormsInput(
                                      hintText: 'Correo',
                                      controller: controller.emailController,
                                    ),
                                    const SizedBox(height: 30),
                                    FormsInput(
                                      hintText: 'Teléfono trabajo',
                                      controller: controller.jobPhoneNumber,
                                    ),
                                    const SizedBox(height: 30),
                                    FormsInput(
                                      hintText: 'Teléfono residencia',
                                      controller: controller.homePhoneNumer,
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink();
                        }),
                        const SizedBox(height: 30),
                        GreenButton(
                            color: Palette.bgGreen,
                            isLoading: false.obs,
                            onPressed: () {})
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
