import 'package:get/get.dart';
import 'package:unisex/pages/authpages/location.dart';

class OTPCon extends GetxController {
  Rx<String> number = RxString("+233-XXX-XXXX");
  void confirm() {
    print("confirm");
    Get.toNamed(LocationScreen.routeName);
  }

  void verify(verificationCode) {
    print(verificationCode);
  }

  void here() {
    print("here");
  }
}
