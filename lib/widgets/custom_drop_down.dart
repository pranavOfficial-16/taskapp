import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/my_data.dart';
import 'package:task_app/controller/dropdown_controller.dart';

class CustomDropdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DropdownController controller = Get.put(DropdownController());

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: 300,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Colors.grey[500]!,
          ),
        ),
        child: Container(
          width: 300,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 30,
              right: 30,
            ),
            child: Obx(
              () => DropdownButton<String>(
                value: controller.dropdownValue.value,
                isExpanded: true,
                underline: const SizedBox.shrink(),
                items: MyData.list.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    controller.changeDropdownValue(value);
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
