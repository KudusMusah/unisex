import 'package:get/get.dart';
import 'package:unisex/pages/authpages/sign_in.dart';

class SplashScreenCon extends GetxController {
  @override
  void onReady() {
    // for auth
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // navigate to signIn screen
        Get.offAllNamed(SignInScreen.routeName);
      },
    );

    super.onReady();
  }
}
