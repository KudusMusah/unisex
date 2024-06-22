import 'package:get/get.dart';

import '../controllers/otp_con.dart';

class OTPBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(OTPCon());
  }
}
