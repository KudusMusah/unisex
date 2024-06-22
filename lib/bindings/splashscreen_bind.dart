import 'package:get/get.dart';

import '../controllers/splashscreen_con.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenCon());
    // Get.put(UserAuthCon());
  }
}
