import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_bases_final_consuelo/app/routes/app_pages.dart';
import 'package:proyecto_bases_final_consuelo/app/utils/utils.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents({super.key});

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.bgGreen,
      height: 150,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              },
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  Text('Ver residentes', style: styles.tabBarTextStyle),
                  const SizedBox(height: 5),
                  VisibilityTabBar(isHovering: _isHovering[0])
                ],
              ),
            ),
            const SizedBox(width: 60),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[1] = true : _isHovering[1] = false;
                });
              },
              onTap: () {
                Get.offAllNamed(Routes.RECORD_PAYMENT);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  Text('Registrar pago', style: styles.tabBarTextStyle),
                  const SizedBox(height: 5),
                  VisibilityTabBar(isHovering: _isHovering[1])
                ],
              ),
            ),
            const SizedBox(width: 60),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[2] = true : _isHovering[2] = false;
                });
              },
              onTap: () {
                Get.offAllNamed(Routes.SEE_DEBTORS);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Ver deudores',
                    style: styles.tabBarTextStyle,
                  ),
                  const SizedBox(height: 5),
                  VisibilityTabBar(isHovering: _isHovering[2])
                ],
              ),
            ),
            const SizedBox(width: 60),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[3] = true : _isHovering[3] = false;
                });
              },
              onTap: () {
                Get.offAllNamed(Routes.REGISTER_RESIDENT);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    'Registrar residente',
                    style: styles.tabBarTextStyle,
                  ),
                  const SizedBox(height: 5),
                  VisibilityTabBar(isHovering: _isHovering[3])
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onHover: (value) {
                setState(() {
                  value ? _isHovering[4] = true : _isHovering[4] = false;
                });
              },
              onTap: () {
                // auth.signOut();
                Get.offAllNamed(Routes.LOGIN);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      iconsReferences.logout,
                      color: Palette.darkBlue,
                    ),
                  ),
                  const SizedBox(height: 5),
                  VisibilityTabBar(isHovering: _isHovering[4])
                ],
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }
}

class VisibilityTabBar extends StatelessWidget {
  const VisibilityTabBar({
    super.key,
    required bool isHovering,
  }) : _isHovering = isHovering;

  final bool _isHovering;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      maintainAnimation: true,
      maintainState: true,
      maintainSize: true,
      visible: _isHovering,
      child: Container(
        height: 2,
        width: 20,
        color: Palette.darkBlue,
      ),
    );
  }
}
