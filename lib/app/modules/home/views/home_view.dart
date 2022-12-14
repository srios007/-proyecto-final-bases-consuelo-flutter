import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 80.0 * controller.residentsList.length,
                        width: Get.width,
                        child: ListView.builder(
                          itemCount: controller.residentsList.length,
                          itemBuilder: (context, index) {
                            final resident = controller.residentsList[index];
                            return ResidentListTitle(
                              controller: controller,
                              
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
  const ResidentListTitle({super.key, required this.controller});
  final HomeController controller;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
Text('')
    ],);
  }
}
class ResidentListTitleItem extends StatelessWidget {
  const ResidentListTitleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}