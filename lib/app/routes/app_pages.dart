import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/home/bindings/home_binding.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/home/views/home_view.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/login/bindings/login_binding.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/login/views/login_view.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/record_payment/bindings/record_payment_binding.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/record_payment/views/record_payment_view.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/bindings/register_resident_binding.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/register_resident/views/register_resident_view.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/see_debtors/bindings/see_debtors_binding.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/see_debtors/views/see_debtors_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.RECORD_PAYMENT,
      page: () => const RecordPaymentView(),
      binding: RecordPaymentBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.SEE_DEBTORS,
      page: () => const SeeDebtorsView(),
      binding: SeeDebtorsBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.REGISTER_RESIDENT,
      page: () => const RegisterResidentView(),
      binding: RegisterResidentBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
