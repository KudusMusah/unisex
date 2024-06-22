import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/homescreen/home.dart';
import '../pages/authpages/sign_up.dart';

class SignInCon extends GetxController {
  late TextEditingController phoneTxtCon;
  late TextEditingController passwdTxtCon;
  @override
  void onInit() {
    phoneTxtCon = TextEditingController();
    passwdTxtCon = TextEditingController();
    super.onInit();
  }

  void logIn() {
    print("login");
    Get.offNamed(HomeScreen.routeName);
  }

  void signUp() {
    Get.toNamed(SignUpScreen.routeName);
  }

  void forgotPassword() {
    print("forgotPassword");
  }

  @override
  void dispose() {
    phoneTxtCon.dispose();
    passwdTxtCon.dispose();
    super.dispose();
  }
}
