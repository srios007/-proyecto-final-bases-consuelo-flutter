import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdaptiveScrollbarCustom extends StatelessWidget {
  const AdaptiveScrollbarCustom({
    super.key,
    required this.verticalScroll,
    required this.horizontalScroll,
    required this.body,
    required this.backgroundColor,
  });
  final ScrollController verticalScroll;
  final ScrollController horizontalScroll;
  final Widget body;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AdaptiveScrollbar(
      controller: verticalScroll,
      width: 15,
      scrollToClickDelta: 75,
      scrollToClickFirstDelay: 200,
      scrollToClickOtherDelay: 50,
      sliderDecoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      sliderActiveDecoration: const BoxDecoration(
        color: Color.fromRGBO(206, 206, 206, 100),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      underColor: Colors.transparent,
      child: AdaptiveScrollbar(
        underSpacing: const EdgeInsets.only(bottom: 20),
        controller: horizontalScroll,
        width: 15,
        position: ScrollbarPosition.bottom,
        sliderDecoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        sliderActiveDecoration: const BoxDecoration(
          color: Color.fromRGBO(206, 206, 206, 100),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        underColor: Colors.transparent,
        child: SingleChildScrollView(
          controller: horizontalScroll,
          scrollDirection: Axis.horizontal,
          child: Container(
            width: Get.width,
            child: Scaffold(
              backgroundColor: backgroundColor,
              body: body,
            ),
          ),
        ),
      ),
    );
  }
}
