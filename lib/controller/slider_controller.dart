import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SliderController extends GetxController {
  var sliderValue = 2.0.obs;
  var sliderColor = Rx<Color>(Colors.green);

  String getLabelForValue(double value) {
    switch (value.toInt()) {
      case 1:
        return 'SLOW';
      case 2:
        return 'SMOOTH';
      case 3:
        return 'FAST';
      default:
        return '';
    }
  }

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }

  void updateSliderColor(Color color) {
    sliderColor.value = color;
  }
}
