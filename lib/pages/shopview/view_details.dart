import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';

class ViewDetails extends GetView<ShopViewCon> {
  const ViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 165.0,
          height: 115.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width - 165.0,
              child: Text(
                controller.saloon.name,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: Get.width - 165.0,
              child: Text(
                controller.saloon.locationService,
                softWrap: true,
                overflow: TextOverflow.fade,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: const Color(0xff25b39e),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: Get.width - 165.0,
              child: Row(
                  children: List<Widget>.generate(
                controller.saloon.ratings,
                (index) => const Icon(Icons.star_border_rounded,
                    size: 24.0, color: Colors.amber),
              )
                  // .followedBy(
                  //   [
                  //     const Spacer(),
                  //     Card(
                  //       shape: const CircleBorder(),
                  //       child: IconButton(onPressed: ()=> controller.favorite(), icon: const Icon(Icons.favorite_border, color: Colors.redAccent,)),
                  //     )
                  //     ]
                  //   ).toList(),
                  ),
            ),
          ],
        )
      ],
    );
  }
}
