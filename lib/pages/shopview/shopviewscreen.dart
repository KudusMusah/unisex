import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';
import 'package:unisex/pages/shared/background_image.dart';
import 'package:unisex/pages/shopview/view_info.dart';

class ShopViewScreen extends GetView<ShopViewCon> {
  const ShopViewScreen({super.key});
  static const String routeName = '/shopview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: const [
          BackgroundImage(alignment: MainAxisAlignment.start, imagePath: 'assets/images/cover0.jpg',),
          ViewInfo()
        ],
      ),
    );
  }
}
