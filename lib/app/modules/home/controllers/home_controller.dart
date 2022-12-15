import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/models/models.dart';

class HomeController extends GetxController {
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();
  List<Metadatum>? metadata;
  List<List<String>>? rows;
  Resident? residentsList = Resident();
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    rows = [
      ['1010010101', 'CC', 'Christian Caro Vargas', 'Hombre', '402', '11']
    ];
    residentsList!.metadata = metadata;
    residentsList!.rows = rows;
    super.onInit();
  }
}
