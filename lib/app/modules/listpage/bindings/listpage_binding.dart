import 'package:get/get.dart';

import '../controllers/listpage_controller.dart';

class ListpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListpageController>(
      () => ListpageController(),
    );
  }
}
