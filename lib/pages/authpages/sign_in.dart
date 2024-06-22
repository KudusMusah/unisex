import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/pages/shared/background_image.dart';
import '../../controllers/sign_in_con.dart';
import '../shared/inputfield.dart';
import '../shared/materialbutton.dart';

class SignInScreen extends GetView<SignInCon> {
  const SignInScreen({super.key});

  static const String routeName = "/signIn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundImage(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0, bottom: 20.0),
                    child: Image.asset('assets/images/logoBlue.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: InputField(
                        labelText: "Phone Number",
                        txtEdCon: controller.phoneTxtCon),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: InputField(
                      labelText: "Password",
                      txtEdCon: controller.passwdTxtCon,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                    child: Button(buttonText: "Log In", onPressed: () => controller.logIn()),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 42.0),
                      side: BorderSide(
                        color: Theme.of(context).backgroundColor,
                        strokeAlign: StrokeAlign.center,
                      ),
                    ),
                    onPressed: () => controller.signUp(),
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).backgroundColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () => controller.forgotPassword(),
                    child: Text("Forgot password?", style: Theme.of(context).textTheme.labelSmall),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
