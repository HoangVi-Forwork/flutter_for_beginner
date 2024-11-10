import 'package:get/get.dart';

class TextDisplayController extends GetxController {
  // Biến RxString để lắng nghe và cập nhật dữ liệu
  var text = ''.obs;

  // Hàm cập nhật giá trị
  void updateText(String newText) {
    text.value = newText;
  }
}
