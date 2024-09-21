import 'dart:async';
import 'package:get/get.dart';

class ProgressController extends GetxController {
  var progress = 0.0.obs;

  void startProgress() {
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if (progress.value >= 1.0) {
        progress.value = 0.0; 
      } else {
        progress.value += 0.02; 
      }
    });
  }

  void updateProgress(double value) {
    progress(value);
  }
}
