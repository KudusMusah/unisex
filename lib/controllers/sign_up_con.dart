import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/authpages/otpscreen.dart';

class SignUpCon extends GetxController {
  late TextEditingController nameTxtEdCon;
  late TextEditingController emailTxtEdCon;
  late TextEditingController phoneTxtEdCon;
  late TextEditingController passwordTxtEdCon;

  @override
  void onInit() {
    nameTxtEdCon = TextEditingController();
    emailTxtEdCon = TextEditingController();
    phoneTxtEdCon = TextEditingController();
    passwordTxtEdCon = TextEditingController();
    super.onInit();
  }

  void signUp() {
    Get.toNamed(OTPScreen.routeName);
    print("signup");
  }

  @override
  void dispose() {
    nameTxtEdCon.dispose();
    emailTxtEdCon.dispose();
    phoneTxtEdCon.dispose();
    passwordTxtEdCon.dispose();
    super.dispose();
  }
}
