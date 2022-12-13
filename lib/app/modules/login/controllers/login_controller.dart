import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKeyLogin = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxBool visiblePassword = false.obs;

  void showPassword() {
    visiblePassword.value
        ? visiblePassword.value = false
        : visiblePassword.value = true;
  }

  String? validatePassword(String? _) {
    if (passwordController.text.isEmpty) {
      return 'Por favor, rellena este campo';
    } else if (passwordController.text.length < 6) {
      return 'La longitud mínima es de 6 caracteres';
    } else {
      return null;
    }
  }

  login() async {
    if (formKeyLogin.currentState!.validate()) {
      isLoading.value = true;

      try {
        Get.toNamed(Routes.HOME);
        isLoading.value = false;
      } catch (e) {
        isLoading.value = false;

        e.toString();
      }
    }
  }
}
