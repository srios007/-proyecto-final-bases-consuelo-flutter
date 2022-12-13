import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SeeDebtorsController extends GetxController {
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }
}
