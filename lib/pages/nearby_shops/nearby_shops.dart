import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/nearby_shops_con.dart';

import '../shared/materialbutton.dart';
import 'appbar.dart';

class NearbyShopsScreen extends GetView<NearbyShopsCon> {
  const NearbyShopsScreen({super.key});

  static const String routeName = '/nearby';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NearbyShopsAppBar(),
      body: ListView.builder(
        itemCount: controller.saloons.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () => controller.toShopView(index),
              minLeadingWidth: 1.0,
              // contentPadding: const EdgeInsets.all(2.0),
              leading: Icon(
                Icons.location_on_outlined,
                size: 35.0,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(
                // controller.saloon.name,
                controller.saloons[index].name,
                overflow: TextOverflow.fade,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Text(
                  // controller.saloon.location,
                  controller.saloons[index].location,
                  overflow: TextOverflow.fade,
                  style: Theme.of(context).textTheme.titleSmall),
              trailing: Button(
                setWidth: true,
                buttonText: "View\nSaloon",
                onPressed: () => controller.toShopView(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
