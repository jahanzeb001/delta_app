// ignore_for_file: override_on_non_overriding_member

import 'package:delta_app/screens/desktop_computer/controller/desktop_computer_controller.dart';
import 'package:delta_app/screens/desktop_moniter/controller/desktop_moniter_home_controller.dart';
import 'package:delta_app/screens/home/controller/home_screen_controller.dart';
import 'package:delta_app/screens/laptops/controller/laptop_products_controller.dart';
import 'package:get/get.dart';

class InitializingDependencise implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController(), fenix: true);
    Get.lazyPut(() => LaptopController(), fenix: true);
    Get.lazyPut(() => DesktopComputerController(), fenix: true);
    Get.lazyPut(() => DesktopMonitersController(), fenix: true);
  }
}
