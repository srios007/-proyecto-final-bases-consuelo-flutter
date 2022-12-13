import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecordPaymentController extends GetxController {
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }
}
