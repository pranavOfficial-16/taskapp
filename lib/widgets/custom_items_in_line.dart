import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:task_app/controller/dropdown_controller.dart';
import 'package:task_app/controller/items_in_line_controller.dart';

class CustomItemsInLine extends StatelessWidget {
  const CustomItemsInLine({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemsInLineController controller = Get.put(ItemsInLineController());
    final DropdownController dropdownController = Get.put(DropdownController());

    return Container(
      width: 300,
      height: 70,
      child: Obx(() {
        return TextField(
          onChanged: (value) {
            if (value.isNotEmpty) {
              controller.updateItemsInLine(value);
            } else {
              controller.itemsinline.value = '';
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
            labelText: 'Items in Line',
            labelStyle: TextStyle(
              color: dropdownController.getDropdownColor(),
            ),
          ),
          controller: TextEditingController(text: controller.itemsinline.value)
            ..selection = TextSelection.fromPosition(
                TextPosition(offset: controller.itemsinline.value.length)),
        );
      }),
    );
  }
}
