import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:task_app/controller/dropdown_controller.dart';
import 'package:task_app/controller/total_items_controller.dart';

class CustomTotalItems extends StatelessWidget {
  const CustomTotalItems({super.key});

  @override
  Widget build(BuildContext context) {
    final TotalItemsController controller = Get.put(TotalItemsController());
    final DropdownController dropdownController = Get.put(DropdownController());

    return Container(
      width: 300,
      height: 70,
      child: Obx(
        () {
          return TextField(
            onChanged: (value) {
              if (value.isNotEmpty) {
                controller.updateTotalItems(value);
              } else {
                controller.totalItems.value = '';
              }
            },
            style: TextStyle(
              color: dropdownController.getDropdownColor(),
            ),
            cursorColor: dropdownController.getDropdownColor(),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: dropdownController.getDropdownColor(),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: dropdownController.getDropdownColor(),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(
                  color: dropdownController.getDropdownColor(),
                ),
              ),
              labelText: 'Total Items',
              labelStyle: TextStyle(
                color: dropdownController.getDropdownColor(),
              ),
            ),
            controller: TextEditingController(text: controller.totalItems.value)
              ..selection = TextSelection.fromPosition(
                  TextPosition(offset: controller.totalItems.value.length)),
          );
        },
      ),
    );
  }
}
