import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/slider_controller.dart';

class CustomSlider extends StatelessWidget {
  final SliderController sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Container(
        width: 300,
        child: Obx(
          () => Slider(
            activeColor: sliderController.sliderColor.value,
            value: sliderController.sliderValue.value,
            min: 1,
            max: 3,
            divisions: 2,
            label: sliderController.getLabelForValue(
              sliderController.sliderValue.value,
            ),
            onChanged: (double value) {
              sliderController.updateSliderValue(value);
            },
          ),
        ),
      ),
    );
  }
}
