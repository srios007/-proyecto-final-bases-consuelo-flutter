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
                        height: 101.0 *  controller.residentsList!.rows!.length,
                        width: Get.width,
                        child: ListView.builder(
                          itemCount: controller.residentsList!.rows!.length,
                          itemBuilder: (context, index) {
                            return ResidentListTitle(
                              resident:  controller.residentsList!.rows![0],
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
  final List<String> resident;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Boque
            ResidentListTitleItem(text: resident[5]),
            // Apartamento
            ResidentListTitleItem(text: resident[4]),
            // Tipo id
            ResidentListTitleItem(text: resident[1]),
            // Id
            ResidentListTitleItem(text: resident[0]),
            // Nombre
            ResidentListTitleItem(text: resident[2]),
            // Género
            ResidentListTitleItem(text: resident[3]),
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
