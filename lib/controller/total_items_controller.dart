import 'package:get/get.dart';

class TotalItemsController extends GetxController {
  var totalItems = ''.obs;

  void updateTotalItems(String value) {
    if (value.isEmpty || int.tryParse(value) == null) {
      totalItems.value = '';
    } else {
      int numValue = int.parse(value);
      if (numValue > 30) {
        Get.snackbar('ERROR', 'Only 30 items allowed');
        totalItems.value = '30';
      } else {
        totalItems.value = value;
      }
    }
  }
}
