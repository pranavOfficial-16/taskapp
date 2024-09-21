import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/dropdown_controller.dart';
import 'package:task_app/controller/progress_controller.dart';

class CustomProgressBar extends StatelessWidget {
  final ProgressController progressController = Get.put(ProgressController());
  final DropdownController dropdownController = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        double progress = progressController.progress.value;
        Color progressColor = dropdownController.getDropdownColor();

        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 20,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Stack(
              children: [
                // LinearProgressIndicator
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: LinearProgressIndicator(
                    value: progress,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.transparent, // No color for the base
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                // Progress Bar with Gradient
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: progress *
                        (MediaQuery.of(context).size.width -
                            40), 
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          progressColor.withOpacity(0.8),
                          progressColor.withOpacity(0.4),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
