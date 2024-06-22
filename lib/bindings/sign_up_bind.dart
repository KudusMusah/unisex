import 'package:get/get.dart';

import '../controllers/sign_up_con.dart';

class SignUpBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpCon());
  }
}
