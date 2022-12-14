import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/models/models.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/home/controllers/home_controller.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';
import 'package:proyecto_bases_final_consuelo/app/widgets/widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const TopBarContents(),
                      const Divider(),
                      Row(
                        children: [
                          ResidentListTitleItem(
                            text: 'Bloque',
                            isTitle: true,
                          ),
                          ResidentListTitleItem(
                            text: 'Apartamento',
                            isTitle: true,
                          ),
                          ResidentListTitleItem(
                            text: 'Tipo identificación',
                            isTitle: true,
                          ),
                          ResidentListTitleItem(
                            text: 'Identificación',
                            isTitle: true,
                          ),
                          ResidentListTitleItem(
                            text: 'Nombre completo',
                            isTitle: true,
                          ),
                          ResidentListTitleItem(
                            text: 'Género',
                            isTitle: true,
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 101.0 * controller.residentsList.length,
                        width: Get.width,
                        child: ListView.builder(
                          itemCount: controller.residentsList.length,
                          itemBuilder: (context, index) {
                            return ResidentListTitle(
                              resident: controller.residentsList[index],
                            );
                          },
                          shrinkWrap: true,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class ResidentListTitle extends StatelessWidget {
  const ResidentListTitle({super.key, required this.resident});
  final Resident resident;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ResidentListTitleItem(text: resident.codBloque!),
            ResidentListTitleItem(text: '${resident.codApartamento!}'),
            ResidentListTitleItem(text: resident.tipoIdentificacion!),
            ResidentListTitleItem(text: resident.identificacionPersona!),
            ResidentListTitleItem(text: resident.nombreCompleto!),
            ResidentListTitleItem(text: resident.generoPersona!),
          ],
        ),
        const Divider()
      ],
    );
  }
}

class ResidentListTitleItem extends StatelessWidget {
  ResidentListTitleItem({
    super.key,
    required this.text,
    this.isTitle = false,
  });
  final String text;
  bool isTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width / 6,
      height: 100,
      child: Center(
        child: Text(
          text,
          style: isTitle
              ? const TextStyle(
                  color: Palette.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24)
              : const TextStyle(
                  color: Palette.darkBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
        ),
      ),
    );
  }
}

class Divider extends StatelessWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: Get.width, height: 1, color: Palette.darkBlue);
  }
}
