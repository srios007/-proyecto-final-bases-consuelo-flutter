import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_bases_final_consuelo/app/modules/login/controllers/login_controller.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';
import 'package:proyecto_bases_final_consuelo/app/widgets/widgets.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return AdaptiveScrollbarCustom(
      verticalScroll: controller.verticalScroll,
      horizontalScroll: controller.horizontalScroll,
      backgroundColor: Palette.bgGreen,
      body: SingleChildScrollView(
        controller: controller.verticalScroll,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width * 0.5,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: Get.height,
                  child: Image.asset(
                    imageReferences.loginBg,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Form(
              key: controller.formKeyLogin,
              child: SizedBox(
                height: Get.height,
                width: Get.width * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Módulo de administración de conjuntos',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Palette.darkBlue,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: CustomInput(
                        hintText: 'Usuario de oracle',
                        controller: controller.userNameController,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: _PasswordInput(controller: controller),
                    ),
                    const SizedBox(height: 60),
                    GreenButton(
                      isLoading: controller.isLoading,
                      onPressed: controller.login,
                      buttonText: 'Ingresar',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Obx(
              () => Container(
                color: Colors.white,
                width: Get.width * 0.3,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        textStyle: styles.textFieldTextStyle,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Contaseña de oracle',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: styles.hintTextStyle,
                        ),
                        errorStyle: GoogleFonts.poppins(
                          textStyle: styles.errorStyle,
                        ),
                        enabledBorder: styles.noBorderTextField,
                        focusedBorder: styles.noBorderTextField,
                        errorBorder: styles.noBorderTextField,
                        focusedErrorBorder: styles.noBorderTextField,
                      ),
                      validator: controller.validatePassword,
                      controller: controller.passwordController,
                      obscureText: !controller.visiblePassword.value,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
