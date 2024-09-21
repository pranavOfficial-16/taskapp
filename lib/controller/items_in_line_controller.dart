import 'package:get/get.dart';

class ItemsInLineController extends GetxController {
  var itemsinline = ''.obs;

  void updateItemsInLine(String value) {
    if (value.isEmpty || int.tryParse(value) == null) {
      itemsinline.value = '';
    } else {
      int numValue = int.parse(value);
      if (numValue > 15) {
        Get.snackbar('ERROR', 'Only 15 items allowed');
        itemsinline.value = '15';
      } else {
        itemsinline.value = value;
      }
    }
  }
}
