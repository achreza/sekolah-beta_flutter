import 'package:get/get.dart';

import '../controllers/latihan2_controller.dart';

class Latihan2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Latihan2Controller>(
      () => Latihan2Controller(),
    );
  }
}
