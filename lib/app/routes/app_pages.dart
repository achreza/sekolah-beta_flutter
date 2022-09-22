import 'package:get/get.dart';

import 'package:f200605110098_prak2/app/modules/form/bindings/form_binding.dart';
import 'package:f200605110098_prak2/app/modules/form/views/form_view.dart';
import 'package:f200605110098_prak2/app/modules/home/bindings/home_binding.dart';
import 'package:f200605110098_prak2/app/modules/home/views/home_view.dart';
import 'package:f200605110098_prak2/app/modules/latihan/bindings/latihan_binding.dart';
import 'package:f200605110098_prak2/app/modules/latihan/views/latihan_view.dart';
import 'package:f200605110098_prak2/app/modules/latihan2/bindings/latihan2_binding.dart';
import 'package:f200605110098_prak2/app/modules/latihan2/views/latihan2_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LATIHAN2;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORM,
      page: () => FormView(),
      binding: FormBinding(),
    ),
    GetPage(
      name: _Paths.LATIHAN,
      page: () => LatihanView(),
      binding: LatihanBinding(),
    ),
    GetPage(
      name: _Paths.LATIHAN2,
      page: () => Latihan2View(),
      binding: Latihan2Binding(),
    ),
  ];
}
