import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';
import 'package:unisex/pages/shared/service_chip.dart';
import 'package:unisex/pages/shopview/image_favourite.dart';
import 'package:unisex/pages/shopview/serviceslist.dart';
import 'package:unisex/pages/shopview/view_details.dart';

import 'appbar.dart';

class ViewInfo extends GetView<ShopViewCon> {
  const ViewInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ViewAppBar(),
            Container(
              height: Get.height * 0.65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),),
              ),
              child: Column(
                children: [
                   const ViewDetails(),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ServiceChip(text: 'Females', onSelected: ()=>controller.filter(), filterMale: controller.filterMale,),
                        ServiceChip(text: 'Males', onSelected: ()=>controller.filter(), filterMale: controller.filterMale,)
                      ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 12.0),
                     child: Text("SERVICES", style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),),
                   ),
                   const Expanded(
                    child: ServicesList())
                ],
              ),
            ),
          ],
        ),
        

        const ImageFav()
      ],
    );
  }
}
