import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/dropdown_controller.dart';
import 'package:task_app/controller/switch_controller.dart';

class CustomSwitch extends StatelessWidget {
  final SwitchController switchController = Get.put(SwitchController());
  final DropdownController dropdownController = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Reverse',
              style: TextStyle(
                color: dropdownController.getDropdownColor(),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 120),
            Switch(
              value: switchController.isSwitched.value,
              onChanged: (value) {
                switchController.toggleSwitch(value);
              },
              activeColor: dropdownController.getDropdownColor(),
              inactiveTrackColor: dropdownController.getDropdownColor(),
              activeTrackColor: dropdownController.getDropdownColor(),
            ),
          ],
        );
      },
    );
  }
}
