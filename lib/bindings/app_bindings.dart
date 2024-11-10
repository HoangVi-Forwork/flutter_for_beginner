import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
  }
}
