import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/splashscreen_con.dart';

class SplashScreen extends GetView<SplashScreenCon> {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = "/splash";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Center(
            child: Image.asset('assets/images/logo.png'),
          ),
          Image.asset(
            'assets/images/auth_background.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
