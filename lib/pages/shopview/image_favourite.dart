import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';

import '../shared/materialbutton.dart';

class ImageFav extends GetView<ShopViewCon> {
  const ImageFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.3, left: 15.0),
              child: PhysicalModel(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16.0),
                child: SizedBox(
                  height: 150.0,
                  width: 150.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      controller.saloon.ownerImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Get.height * 0.2),
              child: Card(
                shape: const CircleBorder(),
                child: IconButton(
                    onPressed: () => controller.favorite(),
                    icon: const Icon(Icons.favorite_border,
                        color: Colors.redAccent, size: 25.0)),
              ),
            )
          ],
        ),
        controller.saloon.services.isNotEmpty
        ? Button(buttonText: 'Check Bookings', onPressed: ()=> controller.checkBookings(), setWidth: true, radius: 27.0, width: double.infinity,)
        : Container()

      ],
    );
  }
}
