import 'package:get/get.dart';

import '../controllers/hello_world_controller.dart';

class HelloWorldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelloWorldController>(
      () => HelloWorldController(),
    );
  }
}
