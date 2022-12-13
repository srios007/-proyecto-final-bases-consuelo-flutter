import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await GetStorage.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Administraor de conjuntos',
      initialRoute: AppPages.INITIAL,
      // initialRoute: Routes.HOME,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
