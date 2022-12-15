import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterResidentController extends GetxController {
  // Conttroladores del scroll horizontal y vertical
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();

  // Controladores de los textfield
  TextEditingController secondLastNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jobPhoneNumber = TextEditingController();
  TextEditingController homePhoneNumer = TextEditingController();
  TextEditingController idController = TextEditingController();

  final key = GlobalKey<FormState>();
  RxString howFindUs = 'CC'.obs;
  RxBool isOwner = false.obs;
  RxString gender = 'Hombre'.obs;

  /// Cambia si es propietario o no
  onChangedIsOwner() {
    if (isOwner.value) {
      isOwner.value = false;
    } else {
      isOwner.value = true;
    }
  }

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }
}
