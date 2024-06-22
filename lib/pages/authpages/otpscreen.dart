import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../controllers/otp_con.dart';
import '../shared/background_image.dart';
import '../shared/materialbutton.dart';

class OTPScreen extends GetView<OTPCon> {
  const OTPScreen({super.key});

  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "We've sent a code to this number\n ${controller.number.value}",
                  softWrap: false,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.fade,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: OtpTextField(
                    numberOfFields: 5,
                    keyboardType: TextInputType.number,
                    borderWidth: 3.0,
                    focusedBorderColor: Colors.black,
                    cursorColor: Theme.of(context).backgroundColor,
                    textStyle: Theme.of(context).textTheme.labelLarge,
                    onSubmit: (String verificationCode) =>
                        controller.verify(verificationCode),
                  ),
                ),
                Button(
                    buttonText: "Confirm",
                    onPressed: () => controller.confirm()),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                  child: Text("Didn't get the code?",
                      style: Theme.of(context).textTheme.labelSmall),
                ),
                RichText(
                  text: TextSpan(
                    text: "Request a new code ",
                    style: Theme.of(context).textTheme.labelSmall,
                    children: <TextSpan>[
                      TextSpan(
                          text: "here",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              controller.here();
                            }),
                      const TextSpan(text: "."),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
