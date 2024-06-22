import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unisex/controllers/shopview_con.dart';
import 'package:unisex/pages/shared/service_card.dart';

class ServicesList extends GetView<ShopViewCon> {
  const ServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.saloon.services.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: controller.saloon.services.length,
            itemBuilder: (BuildContext context, int index) {
              return ServiceCard(
                service: controller.saloon.services[index],
                onPressed: () => controller.bookService(index),);
            },
          )
        : Center(
          // padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            children: [
              Image.asset(
                  'assets/images/location unavailable.png',
                  fit: BoxFit.contain,
                ),
                Text('\nUNAVAILABLE',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),)
            ],
          ),
        );
  }
}
