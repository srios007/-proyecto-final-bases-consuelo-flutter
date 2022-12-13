import 'package:get/get.dart';

import '../controllers/register_resident_controller.dart';

class RegisterResidentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterResidentController>(
      () => RegisterResidentController(),
    );
  }
}
