import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/my_data.dart';
import 'package:task_app/controller/slider_controller.dart';

class DropdownController extends GetxController {
  var dropdownValue = MyData.list.first.obs;
  final SliderController sliderController = Get.find<SliderController>();

  void changeDropdownValue(String newValue) {
    dropdownValue.value = newValue;

    switch (newValue) {
      case 'Green':
        sliderController.updateSliderColor(Colors.green as Color);
        break;
      case 'Blue':
        sliderController.updateSliderColor(Colors.blue as Color);
        break;
      case 'Red':
        sliderController.updateSliderColor(Colors.red as Color);
        break;
      case 'Purple':
        sliderController.updateSliderColor(Colors.purple as Color);
        break;
    }
  }

  Color getDropdownColor() {
    switch (dropdownValue.value) {
      case 'Green':
        return Colors.green;
      case 'Blue':
        return Colors.blue;
      case 'Red':
        return Colors.red;
      case 'Purple':
        return Colors.purple;
      default:
        return Colors.black;
    }
  }
}
