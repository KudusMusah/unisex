import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, this.alignment = MainAxisAlignment.end, this.imagePath = 'assets/images/auth_background.png'});
  final MainAxisAlignment alignment;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: alignment,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            // fit: BoxFit.fitWidth,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
