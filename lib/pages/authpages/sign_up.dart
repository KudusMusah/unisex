import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/pages/shared/materialbutton.dart';

import '../../controllers/sign_up_con.dart';
import '../shared/background_image.dart';
import '../shared/inputfield.dart';

class SignUpScreen extends GetView<SignUpCon> {
  const SignUpScreen({super.key});

  static const String routeName = "/signUp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          const BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, bottom: 20.0),
                  child: Image.asset('assets/images/logoBlue.png'),
                ),
                Text(
                  "We Locate All The Best Saloons Near You..\nEverywhere You Go..",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: const Color(0xff848383),
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 8),
                  child: InputField(
                      labelText: "Name", txtEdCon: controller.nameTxtEdCon),
                ),
                InputField(
                    labelText: "Email", txtEdCon: controller.emailTxtEdCon),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InputField(
                      labelText: "Phone Number",
                      txtEdCon: controller.phoneTxtEdCon),
                ),
                InputField(
                    labelText: "Password",
                    txtEdCon: controller.passwordTxtEdCon),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Button(
                      buttonText: "Sign Up",
                      onPressed: () => controller.signUp()),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
