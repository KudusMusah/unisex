import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/pages/homescreen/appbar/appbar.dart';
import 'package:unisex/pages/homescreen/searchdelegate.dart';
import 'dart:math' as math;

import '../../controllers/nearby_shops_con.dart';

class DragScrollBottomSheet extends GetView<NearbyShopsCon> {
  const DragScrollBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showSearch(context: context, delegate: Search(saloons: controller.saloons)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarScreen(),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            color: Colors.white,
            margin: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(top: 12.0),
              height: 150.0,
              width: 350.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PhysicalModel(
                        borderRadius: BorderRadius.circular(14.0),
                        elevation: 4.0,
                        color: Colors.white,
                        child: SizedBox(
                          height: 60,
                          width: 250,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.white54,
                                  ),
                                ),
                              ),
                              Text(
                                'Search saloon here',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4.0,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.send_outlined,
                              size: 30.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    minLeadingWidth: 1.0,
                    // contentPadding: const EdgeInsets.all(2.0),
                    leading: Icon(
                      Icons.location_on_outlined,
                      size: 35.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: Text(
                      controller.saloon.name,
                      overflow: TextOverflow.fade,
                      // controller.saloons[index].name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Text(controller.saloon.location,
                        overflow: TextOverflow.fade,
                        // controller.saloons[index].location,
                        style: Theme.of(context).textTheme.titleSmall),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
