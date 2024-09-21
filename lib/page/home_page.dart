import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/controller/progress_controller.dart';
import 'package:task_app/widgets/custom_drop_down.dart';
import 'package:task_app/widgets/custom_image.dart';
import 'package:task_app/widgets/custom_items_in_line.dart';
import 'package:task_app/widgets/custom_progress_widget.dart';
import 'package:task_app/widgets/custom_slider.dart';
import 'package:task_app/widgets/custom_switch.dart';
import 'package:task_app/widgets/custom_total_items.dart';

class HomePage extends StatelessWidget {
  final ProgressController progressController = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    progressController.startProgress();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const CustomImage(),
              CustomDropdown(),
              CustomSlider(),
              CustomTotalItems(),
              CustomItemsInLine(),
              CustomSwitch(),
              CustomProgressBar(),
            ],
          ),
        ),
      ),
    );
  }
}
