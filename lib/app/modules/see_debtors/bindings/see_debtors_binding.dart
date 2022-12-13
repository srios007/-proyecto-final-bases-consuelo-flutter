import 'package:get/get.dart';

import '../controllers/see_debtors_controller.dart';

class SeeDebtorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeeDebtorsController>(
      () => SeeDebtorsController(),
    );
  }
}
