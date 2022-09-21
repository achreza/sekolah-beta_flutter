import 'package:get/get.dart';

import '../controllers/latihan_controller.dart';

class LatihanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatihanController>(
      () => LatihanController(),
    );
  }
}
