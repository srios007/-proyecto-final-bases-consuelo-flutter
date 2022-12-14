import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/models/models.dart';

class HomeController extends GetxController {
  final ScrollController horizontalScroll = ScrollController();
  final ScrollController verticalScroll = ScrollController();
  List<Resident> residentsList = [
    Resident(
      identificacionPersona: '123',
      tipoIdentificacion: 'CC',
      nombreCompleto: 'Santiago Rios Valero',
      generoPersona: 'Masculino',
      codApartamento: 401,
      codBloque: '12',
    ),
  ];

  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }
}
