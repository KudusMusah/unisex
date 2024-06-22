import 'package:get/get.dart';
import 'package:unisex/controllers/sign_in_con.dart';

class SignInBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInCon());
  }
}
