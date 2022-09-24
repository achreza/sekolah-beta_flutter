import 'package:get/get.dart';

import '../controllers/gridview_controller.dart';

class GridviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GridviewController>(
      () => GridviewController(),
    );
  }
}
